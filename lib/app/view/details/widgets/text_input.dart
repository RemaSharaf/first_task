import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget textField({
  required TextEditingController controller,
  required String hitText,
  required String label,
  int numLins = 1,
  Color color = const Color(0xff5A55C9),
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        padding: EdgeInsets.only(
          right: 0.4.w,
          bottom: 6.h,
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14.sp,
            color: const Color(0xff010101),
          ),
        ),
      ),
      Material(
        borderRadius: BorderRadius.circular(8),
        elevation: 2,
        shadowColor: const Color(0xff000000),
        child: TextField(
          // keyboardType: TextInputType.none,
          textInputAction: TextInputAction.done,
          maxLines: numLins,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
              top: 8.h,
              bottom: 8.h,
              right: 15.7.w,
              left: 7.w,
            ),
            hintText: hitText,
            hintStyle: TextStyle(
              fontSize: 12.sp,
              color: color,
            ),
            fillColor: const Color(0xffF6F7F9),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1,
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    ],
  );
}
