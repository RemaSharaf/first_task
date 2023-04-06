import 'package:first_task/app/view/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});
  final homeCtrl = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView.builder(
              itemCount: homeCtrl.messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(vertical: 75.h),
              itemBuilder: (context, index) {
                return Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
                    child: Row(
                      mainAxisAlignment:
                          (homeCtrl.messages[index].messageType == "receiver"
                              ? MainAxisAlignment.end
                              : MainAxisAlignment.start),
                      children: [
                        index == 0
                            ? const CircleAvatar()
                            : (homeCtrl.messages[index - 1].messageType ==
                                    "sender")
                                ? Container(
                                    padding: EdgeInsets.only(right: 35.w),
                                  )
                                : homeCtrl.messages[index].messageType ==
                                        "sender"
                                    ? const CircleAvatar()
                                    : Container(),
                        SizedBox(
                          width: 3.w,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: (homeCtrl.messages[index].messageType ==
                                    "receiver"
                                ? const Color(0xffF6F6FF)
                                : const Color(0xffAFBBC6)),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 15.h),
                          child: Row(children: [
                            Text(
                              homeCtrl.messages[index].messageContent,
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: (homeCtrl.messages[index].messageType ==
                                        "receiver"
                                    ? const Color(0xff7B8793)
                                    : Colors.white),
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        index == 0
                            ? (homeCtrl.messages[index].messageType ==
                                    "receiver")
                                ? const CircleAvatar()
                                : Container()
                            : (homeCtrl.messages[index - 1].messageType ==
                                    "receiver")
                                ? Container(
                                    padding: EdgeInsets.only(right: 35.w),
                                  )
                                : homeCtrl.messages[index].messageType ==
                                        "receiver"
                                    ? const CircleAvatar()
                                    : Container(),
                      ],
                    ));
              },
            ),
            Container(
              height: 75.h,
              decoration: BoxDecoration(
                  color: const Color(0xffF6F6FF),
                  border: Border.all(
                    color: const Color(0xffDBE5ED),
                  ),
                  borderRadius: const BorderRadiusDirectional.only(
                      topEnd: Radius.circular(20),
                      topStart: Radius.circular(20))),
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://randomuser.me/api/portraits/men/5.jpg"),
                        maxRadius: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 8.w,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "اسم الاداري",
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            Text(
                              "Online",
                              style: TextStyle(
                                fontSize: 11.sp,
                                color: const Color(0xff9B51E0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 20,
                      color: Color(0xff5A55C9),
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(
                  bottom: 20.h,
                  top: 14.h,
                  left: 10.w,
                  right: 10.w,
                ),
                height: 56.h,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Stack(
                        children: [
                          TextField(
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 35.w, vertical: 20.h),
                              hintText: "اكتب رسالة هنا",
                              hintStyle: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xff7B8793),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1,
                                  color: Color(0xffDBE5ED),
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1,
                                  color: Color(0xffDBE5ED),
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.mic_none_outlined,
                                color: Color(0xffAFBBC6),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 65,
                            top: 0,
                            bottom: 0,
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.bottomSheet(
                                      Align(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(.7),
                                            borderRadius:
                                                BorderRadius.circular(21),
                                          ),
                                          height: double.infinity,
                                          width: double.infinity,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Column(
                                                children: [
                                                  Image.asset(
                                                      "assets/images/Upload_Icon.png"),
                                                  Text(
                                                    "Upload file",
                                                    style: TextStyle(
                                                      fontSize: 36.sp,
                                                      color: const Color(
                                                          0xff9B51E0),
                                                    ),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                      style: TextStyle(
                                                          fontSize: 14.sp,
                                                          color: const Color(
                                                              0xff4B5155)),
                                                      children: const <
                                                          TextSpan>[
                                                        TextSpan(
                                                            text:
                                                                'Drag file here or '),
                                                        TextSpan(
                                                            text: 'browse',
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff9B51E0))),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    "Supported file types: JPG, PNG, DOCX, PDF, MP4",
                                                    style: TextStyle(
                                                      fontSize: 14.sp,
                                                      color: const Color(
                                                          0xff4B5155),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    "79%",
                                                    style: TextStyle(
                                                      fontSize: 24.sp,
                                                      color: const Color(
                                                          0xff9B51E0),
                                                    ),
                                                  ),
                                                  const StepProgressIndicator(
                                                    totalSteps: 1,
                                                    currentStep: 0,
                                                    size: 5,
                                                    padding: 50,
                                                    selectedColor:
                                                        Color(0xff9B51E0),
                                                    unselectedColor:
                                                        Color(0xff9B51E0),
                                                  ),
                                                ],
                                              )
                                            ],
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
                                  child: const Icon(
                                    Icons.attachment_rounded,
                                    color: Color(0xffAFBBC6),
                                  ),
                                ),
                                GestureDetector(
                                  child: const Icon(
                                    Icons.face,
                                    color: Color(0xffAFBBC6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w),
                              child: FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: const Color(0xff9678F6),
                                elevation: 0,
                                child: const Icon(
                                  Icons.send,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
