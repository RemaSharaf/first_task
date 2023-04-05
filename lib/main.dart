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
      home: Start(),
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
          child: Container(),
          painter: CounterPainter(),
        ),
      )),
    );
  }
}

class CounterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..strokeWidth = 8;
    canvas.drawLine(Offset(size.width * 1 / 6, size.height * 1 / 7),
        Offset(size.width * 1 / 5, size.height * 1 / 7), paint);
    // for (int i = 0; i < 27; i++) {}
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class DataItem {
  final Color color;
  final int value;
  DataItem({required this.color, required this.value});
}
