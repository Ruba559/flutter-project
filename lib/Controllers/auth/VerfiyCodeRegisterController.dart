import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/class/statusrequest.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeRegisterController extends GetxController {
  checkCode();
  getSuccessRegister();
}

class VerfiyCodeRegisterControllerImp extends VerfiyCodeRegisterController {

 String? email;

   StatusRequest? statusRequest;

  @override
  checkCode() {}

  @override
  getSuccessRegister() {
    Get.offNamed(AppRoute.successRegister);
  }

  @override
  void onInit() {
     email = Get.arguments['email'];
    super.onInit();
  }
}
