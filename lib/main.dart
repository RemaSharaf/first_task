import 'package:device_preview/device_preview.dart';
import 'package:first_task/app/data/providers/locale/provider.dart';
import 'package:first_task/app/data/services/storage/repository.dart';
import 'package:first_task/app/locale/locale.dart';
import 'package:first_task/app/view/home/binding.dart';
import 'package:first_task/app/view/home/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/data/services/storage/services.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync(
    () => StorageService().init(),
  );
  runApp(
    // DevicePreview(
    //   builder: (context) => MyApp(), // Wrap your app
    // ),
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: MyLocale(),
      locale:
          Locale(OrdersRepository(localProvider: LocalProvider()).readLang()) ??
              Locale("ar"),
      initialBinding: HomeBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.cairo().fontFamily,
          scaffoldBackgroundColor: Colors.white),
      // builder: DevicePreview.appBuilder,
      home: Counter(),
    );
  }
}

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: CustomPaint(
          painter: CounterPainter(color: const Color(0xffD168CD), height: 9),
          child: Container(
            width: 261.w,
            height: 48.h,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color(0xff5A55C9),
              ),
            ),
          ),
        ),
      )),
    );
  }
}

class CounterPainter extends CustomPainter {
  final int height;
  final Color color;
  CounterPainter({required this.height, required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 4
      ..color = color;
    canvas.drawLine(Offset(size.width * 1 / 5, size.height * 1 / height),
        Offset(size.width * 1 / 5, size.height * 1 / 12), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
