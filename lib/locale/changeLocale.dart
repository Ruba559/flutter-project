
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/app-theme.dart';
import 'package:get/get.dart';


import '../Services/MyService.dart';

class LocaleController extends GetxController {
  Locale? language;

    ThemeData appTheme = themeEnglish;

  MyServices myServices = Get.find();

  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
     appTheme = langcode == "ar" ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
        appTheme = themeArabic;
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
        appTheme = themeEnglish;
    } else {
        language = Locale(Get.deviceLocale!.languageCode) ;
          appTheme = themeEnglish;
    }
    super.onInit();
  }
}
