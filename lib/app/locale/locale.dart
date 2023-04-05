import 'package:get/get.dart';

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "1": "اهلا ريما",
          "2": "عدد التصاميم المتاحة هو 5",
          "3": "اطلب تصميمك الان",
          "4": "التصاميم الحالية ",
          "5": "اسم التصميم"
        },
        "en": {
          "1": "ًًWelcome Reema",
          "2": "The number of allowed design is 5",
          "3": "Request your design now",
          "4": "Current designs",
          "5": "Design name"
        },
      };
}
