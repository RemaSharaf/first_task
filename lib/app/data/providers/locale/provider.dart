import 'dart:convert';

import 'package:first_task/app/data/services/storage/services.dart';
import 'package:get/get.dart';

class LocalProvider {
  final _storage = Get.find<StorageService>();
  String? readLang() {
    var langJson = _storage.read("lang");
    if (langJson == null) {
      return null;
    }
    return jsonDecode(langJson);
  }

  writeLang(String code) {
    _storage.write("lang", jsonEncode(code));
  }
}
