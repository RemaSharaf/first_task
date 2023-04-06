import 'package:first_task/app/view/details/view.dart';
import 'package:first_task/app/view/home/controller.dart';
import 'package:first_task/app/view/home/widgets/card.dart';
import 'package:first_task/app/view/order/order_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final controller = Get.find<HomeController>();
  SampleItem? selectedMenu;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 23.h, horizontal: 16.w),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(right: 9.w),
                child: Text(
                  "1".tr,
                  style: TextStyle(
                    fontSize: 24.sp,
                    color: const Color(0xff010101),
                  ),
                ),
              ),
              PopupMenuButton<SampleItem>(
                icon: const Icon(
                  Icons.translate,
                  color: Color(0xff5A55C9),
                ),
                initialValue: selectedMenu,
                onSelected: (SampleItem item) {},
                itemBuilder: (BuildContext context) =>
                    <PopupMenuEntry<SampleItem>>[
                  PopupMenuItem<SampleItem>(
                    value: SampleItem.ar,
                    child: const Text('Ar'),
                    onTap: () => controller.changeLan("ar"),
                  ),
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.heb,
                    child: Text('Heb'),
                  ),
                  PopupMenuItem<SampleItem>(
                    value: SampleItem.eng,
                    child: const Text('Eng'),
                    onTap: () => controller.changeLan("en"),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7.4.h),
            child: Text(
              "2".tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xff010101),
                fontSize: 18.sp,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 27.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Get.bottomSheet(
                      Align(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(21),
                          ),
                          height: 213.h,
                          width: 343.w,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 22.w),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  " هل تريد زيادة عدد التصاميم المتاحة ؟! ",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xff010101),
                                  ),
                                ),
                                Text(
                                  "هل تريد زيادة عدد التصاميم المتاحة؟",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: const Color(0xff010101),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 134.w,
                                      height: 35.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xff5A55C9),
                                            Color(0xffCDCCEE),
                                          ],
                                        ),
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: Center(
                                          child: Text(
                                            "نعم",
                                            style: TextStyle(
                                              fontSize: 13.sp,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 134.w,
                                      height: 35.h,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: const Color(0xffACACAC),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: InkWell(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: Center(
                                          child: Text(
                                            "لا",
                                            style: TextStyle(
                                              fontSize: 13.sp,
                                              color: const Color(0xff273236),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      isDismissible: false,
                      isScrollControlled: true,
                      enableDrag: false,
                    );
                  },
                  child: SvgPicture.asset(
                    "assets/images/svgexport-7.svg",
                  ),
                ),
                Container(
                  width: 261.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(
                      color: const Color(0xff5A55C9),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: Stack(
                          children: [
                            SvgPicture.asset(
                              "assets/images/Polygon.svg",
                              width: 16,
                              height: 16,
                            ),
                            Positioned(
                              right: 0,
                              left: 0,
                              child: SvgPicture.asset(
                                "assets/images/Polygon2.svg",
                                width: 11,
                                height: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < 27; i++)
                            CustomPaint(
                              painter: CounterPainter(
                                  color: i > 12
                                      ? const Color(0xffD168CD)
                                      : const Color(0xff343435),
                                  height: i.isEven ? 22 : 17,
                                  width: 7,
                                  end: i.isEven ? 1 : 4),
                              child: const SizedBox(
                                height: 12,
                                width: 9,
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset(
                  "assets/images/svgexport-6.svg",
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            height: 47.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff5A55C9),
                  Color(0xffCDCCEE),
                ],
              ),
            ),
            child: InkWell(
              onTap: () {
                Get.to(() => OrderDesign());
              },
              child: Center(
                child: Text(
                  "3".tr,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 14.h),
            child: Text(
              "4".tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => Edit());
            },
            child: card(),
          ),
        ],
      ),
    );
  }
}

class CounterPainter extends CustomPainter {
  final double height;
  final Color color;
  final double width;
  final double end;
  CounterPainter(
      {required this.height,
      required this.color,
      required this.width,
      required this.end});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 4
      ..color = color;
    canvas.drawLine(Offset(size.width * 1 / width, height),
        Offset(size.width * 1 / width, end), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
