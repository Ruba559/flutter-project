import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Controllers/HomeController.dart';
import 'package:flutter_application_1/core/constant/color.dart';
import 'package:flutter_application_1/locale/changeLocale.dart';
import 'package:get/get.dart';

class HomeButton extends GetView<HomeController> {

  const HomeButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

   
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      color: AppColor.primaryColor,
      child: MaterialButton(
        onPressed: () {
          controller.next();
        },
        child: Text('continue'.tr),
        textColor: Colors.white,
      ),
    );
  }
}
