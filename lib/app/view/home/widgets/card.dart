import 'package:first_task/app/view/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget details(IconData icon, String data) {
  return Row(
    children: [
      Icon(
        icon,
        size: 16.sp,
        color: const Color(0xff5A55C9),
      ),
      Container(
        margin: EdgeInsets.symmetric(
          horizontal: 5.w,
        ),
        child: Text(
          data,
          style: GoogleFonts.poppins(
            fontSize: 10.sp,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    ],
  );
}

Widget card() {
  final controller = Get.find<HomeController>();
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(7),
      color: const Color(0xffF1F1FE),
    ),
    child: Stack(
      children: [
        Container(
          height: 103.h,
          margin: EdgeInsets.symmetric(
            vertical: 7.h,
            horizontal: 9.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "5".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xff010101),
                  fontSize: 14.sp,
                ),
              ),
              Text(
                "هذا النص هو مثال لنص يمكن أن يستبدل في نفس",
                // textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xff707070),
                  fontSize: 12.sp,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Column(
                    children: [
                      const Divider(
                        thickness: 0.7,
                        color: Color(0xffCCCCCC),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          details(Icons.access_time, "10:00 AM"),
                          details(
                              Icons.calendar_month_outlined, "الاحد 9 سبتمر"),
                          details(Icons.attachment, "مرفق 2")
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
        Positioned.directional(
          textDirection:
              controller.code == "en" ? TextDirection.ltr : TextDirection.rtl,
          top: -50.h,
          end: -70,
          // start: 0,
          height: 130.h,
          width: 130.w,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffDA1200),
            ),
          ),
        ),
        Positioned.directional(
          textDirection:
              controller.code == "en" ? TextDirection.ltr : TextDirection.rtl,
          top: 20.h,
          end: 13.w,
          child: const Text(
            "تعديل",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    ),
  );
}
