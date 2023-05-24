import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/color.dart';
import 'package:get/get.dart';

Future<bool> alertExit(){
  return Get.defaultDialog(
     title: "تنبيه",
      titleStyle:const  TextStyle(color: AppColor.primaryColor , fontWeight: FontWeight.bold),
      middleText: "هل تريد الخروج من التطبيق",
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.primaryColor)),
            onPressed: () {
              exit(0);
            },
            child:const Text("تاكيد")),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.primaryColor)),
            onPressed: () {
              Get.back();
            },
            child:const Text("الغاء"))
      ]).then((value) => value ?? false);
  return Future.value(true);
}