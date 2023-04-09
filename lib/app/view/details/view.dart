import 'package:first_task/app/view/chat/chat.dart';
import 'package:first_task/app/view/details/widgets/text_input.dart';
import 'package:first_task/app/view/home/controller.dart';
import 'package:first_task/app/view/home/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Edit extends StatelessWidget {
  Edit({super.key});
  final homeCtrl = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Main(
        widget: Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Text(
                "5".tr,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: const Color(0xff010101),
                ),
              ),
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back,
                  textDirection: homeCtrl.code.value == "en"
                      ? TextDirection.rtl
                      : TextDirection.ltr,
                  color: const Color(0xff5A55C9),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: 7.h,
              bottom: 20.h,
            ),
            child: Image.asset(
              "assets/images/Mask_Group.png",
              fit: BoxFit.cover,
            ),
          ),
          Wrap(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 107.w,
                    height: 36.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffDA1200),
                    ),
                    child: InkWell(
                      onTap: () async {
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "27".tr,
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: const Color(0xff010101),
                                      ),
                                    ),
                                    Material(
                                      borderRadius: BorderRadius.circular(8),
                                      elevation: 3,
                                      shadowColor: const Color(0xff000000),
                                      child: TextFormField(
                                        maxLines: 3,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.h,
                                            horizontal: 15.7.w,
                                          ),
                                          hintText: "28".tr,
                                          hintStyle: TextStyle(
                                            fontSize: 12.sp,
                                            color: const Color(0xffBDBDBD),
                                          ),
                                          fillColor: Colors.white,
                                          filled: true,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              width: 1,
                                              color: Colors.transparent,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
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
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                                                "26".tr,
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
                                                "29".tr,
                                                style: TextStyle(
                                                  fontSize: 13.sp,
                                                  color:
                                                      const Color(0xff273236),
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
                      child: Center(
                        child: Text(
                          "6".tr,
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 107.w,
                    height: 36.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff54AE4E),
                    ),
                    child: InkWell(
                      child: Center(
                        child: Text(
                          "7".tr,
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 107.w,
                    height: 36.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff9678F6),
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.to(() => ChatPage());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.chat,
                            color: Colors.white,
                            size: 20,
                          ),
                          Text(
                            "8".tr,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: 19.h,
              bottom: 6.h,
            ),
            child: Text(
              "9".tr,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xff273236),
              ),
            ),
          ),
          textField(
            controller: TextEditingController(),
            label: "10".tr,
            hitText: "منشور",
          ),
          textField(
            controller: TextEditingController(),
            label: "11".tr,
            hitText: "سوشيل ميديا",
          ),
          textField(
            controller: TextEditingController(),
            label: "10".tr,
            hitText:
                "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.",
            numLins: 2,
          ),
        ],
      ),
    ));
  }
}
