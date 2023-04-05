import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget dropDown({list, required String title}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(bottom: 5.h),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 14.sp,
            color: const Color(0xff010101),
          ),
        ),
      ),
      DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0xffD1D1D1),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Color(0xffDDDDDD),
              blurRadius: 6.0,
              spreadRadius: 2.0,
              offset: Offset(0.0, 0.0),
            )
          ],
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          child: DropdownButtonFormField<String>(
            hint: Text(
              "اختر نوع التصميم",
              style: TextStyle(
                fontSize: 12.sp,
                color: const Color(0xffBDBDBD),
              ),
            ),
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            style: TextStyle(
              fontSize: 12.sp,
              color: const Color(0xffBDBDBD),
            ),
            borderRadius: BorderRadius.circular(15),
            onChanged: (String? value) {},
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: const Color(0xff5E5E5E),
              size: 26.w,
            ),
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(
                    color: const Color(0xff010101),
                    fontSize: 14.sp,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      )
    ],
  );
}
