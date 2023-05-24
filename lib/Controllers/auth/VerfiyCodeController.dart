import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeController extends GetxController {
  checkCode();
  getResetPassword();
}

class VerfiyCodeControllerImp extends VerfiyCodeController {

late String pin;

  @override
  checkCode() {}

  @override
  getResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
