import 'package:first_task/app/view/details/widgets/text_input.dart';
import 'package:first_task/app/view/home/controller.dart';
import 'package:first_task/app/view/home/view.dart';
import 'package:first_task/app/view/order/widgets/drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDesign extends StatelessWidget {
  OrderDesign({super.key});
  final homeCtl = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Main(
      widget: Container(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Text(
                      "12".tr,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xff5A55C9),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        textDirection: homeCtl.code.value == "en"
                            ? TextDirection.rtl
                            : TextDirection.ltr,
                        color: const Color(0xff5A55C9),
                      ),
                    )
                  ],
                ),
                textField(
                  controller: TextEditingController(),
                  hitText: "32".tr,
                  label: "13".tr,
                  color: const Color(0xffBDBDBD),
                ),
                SizedBox(
                  height: 16.h,
                ),
                textField(
                    controller: TextEditingController(),
                    hitText: "33".tr,
                    label: "14".tr,
                    color: const Color(0xffBDBDBD),
                    numLins: 3),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 11.h,
                  ),
                  child: Text(
                    "34".tr,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff010101),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: 21.h,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: Get.size.width / 2 - 16.w,
                        height: 40.h,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffDDDDDD),
                              blurRadius: 6.0,
                              spreadRadius: 2.0,
                              offset: Offset(0.0, 0.0),
                            )
                          ],
                          color: Color(0xffE9EAF8),
                          borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(15),
                              bottomStart: Radius.circular(15)),
                        ),
                        child: Center(
                          child: InkWell(
                            child: Text(
                              "15".tr,
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: Get.size.width / 2 - 16.w,
                        height: 40.h,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffDDDDDD),
                              blurRadius: 6.0,
                              spreadRadius: 2.0,
                              offset: Offset(0.0, 0.0),
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.only(
                              topEnd: Radius.circular(15),
                              bottomEnd: Radius.circular(15)),
                        ),
                        child: Center(
                          child: InkWell(
                            child: Text(
                              "16".tr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                dropDown(
                  list: homeCtl.designType,
                  title: "10".tr,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 8.h,
                    bottom: 15.h,
                  ),
                  child: dropDown(
                    list: homeCtl.designDimensions,
                    title: "11".tr,
                  ),
                ),
                Text(
                  "18".tr,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xff010101),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.7.h, bottom: 20.h),
                  height: 68.h,
                  width: 343.w,
                  decoration: BoxDecoration(
                    color: const Color(0xffF1F3FA),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: const Color(0xffC5C8D2)),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffDDDDDD),
                        blurRadius: 6.0,
                        spreadRadius: 2.0,
                        offset: Offset(0.0, 0.0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.cloud_upload_outlined,
                        color: const Color(0xff5A55C9),
                        size: 26.sp,
                      ),
                      Text(
                        "19".tr,
                        style: GoogleFonts.poppins(
                          color: const Color(0xff9E9E9E),
                          fontSize: 10.sp,
                        ),
                      ),
                      Text(
                        "20".tr,
                        style: GoogleFonts.poppins(
                          color: const Color(0xff9E9E9E),
                          fontSize: 10.sp,
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "21".tr,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xff010101),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 13.h, bottom: 37.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: Get.size.width / 2 - 20.w,
                        height: 39.h,
                        decoration: BoxDecoration(
                          color: const Color(0xffFA6322),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(
                          child: InkWell(
                            child: Text(
                              "22".tr,
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: Get.size.width / 2 - 20.w,
                        height: 39.h,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                            color: const Color(0xff9678F6),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: InkWell(
                              child: Text(
                                "23".tr,
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  color: const Color(0xff6F6F6F),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8.h, bottom: 20.h),
                  child: textField(
                      controller: TextEditingController(),
                      hitText: "25".tr,
                      label: "24".tr,
                      color: const Color(0xffBDBDBD),
                      numLins: 3),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 28.w),
                  // width: 288.w,
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
                    onTap: () {},
                    child: Center(
                      child: Text(
                        "26".tr,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
