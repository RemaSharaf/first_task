import 'package:first_task/app/data/services/storage/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  final services = Get.find<StorageService>();
  // Locale intialLang = (services.read<String>("lang")) == "ar"
  //     ? const Locale("ar")
  //     : const Locale("en");
  void changeLan(String code) {
    Locale locale = Locale(code);
    services.write("lang", code);
    Get.updateLocale(locale);
  }
}
