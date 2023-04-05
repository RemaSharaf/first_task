import 'dart:convert';

import 'package:first_task/app/data/services/storage/services.dart';
import 'package:get/get.dart';

class LocalProvider {
  final _storage = Get.find<StorageService>();
  String readLang() {
    return jsonDecode(_storage.read("lang").toString());
  }

  writeLang(String code) {
    _storage.write("lang", jsonEncode(code));
  }
}
