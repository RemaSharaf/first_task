import 'package:first_task/app/view/details/view.dart';
import 'package:first_task/app/view/home/controller.dart';
import 'package:first_task/app/view/home/widgets/home.dart';
import 'package:first_task/app/view/order/order_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Start extends GetView<HomeController> {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Main(widget: Home());
  }
}

class Main extends StatelessWidget {
  Main({super.key, required this.widget});
  Widget widget;
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Obx(() => IndexedStack(
                  index: controller.tabIndex.value,
                  children: [
                    Column(
                      children: [
                        Expanded(child: widget),
                        Container(
                          height: 100,
                          color: Colors.transparent,
                        )
                      ],
                    ),
                    Text("data")
                  ],
                )),
            bottomNavigation(controller, index)
          ],
        ),
      ),
    );
  }
}

Widget bottomNavigation(controller, int index) {
  return Positioned(
    bottom: 24.h,
    left: 23.w,
    right: 23.w,
    child: Container(
      height: 53.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffF1F1FE),
      ),
      child: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  index = 0;
                  controller.changeTab(index);
                },
                icon: Icon(
                  Icons.home,
                  color: controller.tabIndex == 0
                      ? const Color(0xff5A55C9)
                      : const Color(0xff707070),
                ),
              ),
              IconButton(
                onPressed: () {
                  index = 1;
                  controller.changeTab(index);
                },
                icon: Icon(
                  Icons.settings_outlined,
                  color: controller.tabIndex == 1
                      ? const Color(0xff5A55C9)
                      : const Color(0xff707070),
                ),
              ),
            ],
          )),
    ),
  );
}
