import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:flutter_application_1/locale/changeLocale.dart';
import 'package:get/get.dart';

import '../widget/home/buttonLang.dart';

class Language extends GetView<LocaleController>  {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
           Text("1".tr, style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 20),
         buttonLang(textbutton: 'ar', onPressed: (){
           controller.changeLang("ar");
                    Get.offNamed(AppRoute.home) ; 
         }),
         buttonLang(textbutton: 'en', onPressed: (){
            controller.changeLang("en");
                    Get.offNamed(AppRoute.home) ; 
         }),
      ],)
      ),
    );
  }
}