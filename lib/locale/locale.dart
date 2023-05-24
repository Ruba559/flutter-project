import 'package:get/get.dart';

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {"1": "اختر اللغة" , "continue" : "تتمة"},
        "en": {"1": "choose the language" , "continue" : "continue"},
      };
}
