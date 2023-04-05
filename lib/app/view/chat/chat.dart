import 'package:first_task/app/view/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
                    child: Align(
                      alignment:
                          (homeCtrl.messages[index].messageType == "receiver"
                              ? Alignment.topLeft
                              : Alignment.topRight),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (homeCtrl.messages[index].messageType ==
                                  "receiver"
                              ? const Color(0xffF6F6FF)
                              : const Color(0xffAFBBC6)),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 15.h),
                        child: Text(
                          homeCtrl.messages[index].messageContent,
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: (homeCtrl.messages[index].messageType ==
                                    "receiver"
                                ? const Color(0xff7B8793)
                                : Colors.white),
                          ),
                        ),
                      ),
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
                    onPressed: () {},
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
