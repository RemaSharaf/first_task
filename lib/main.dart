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
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        translations: MyLocale(),
        locale: Locale(
            OrdersRepository(localProvider: LocalProvider()).readLang() ??
                "ar"),
        initialBinding: HomeBinding(),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: GoogleFonts.cairo().fontFamily,
            scaffoldBackgroundColor: Colors.white),
        // builder: DevicePreview.appBuilder,
        home: Start(),
      ),
    );
  }
}
