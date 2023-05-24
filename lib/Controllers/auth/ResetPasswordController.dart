import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  register();
  getLogin();
  goSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;

  @override
  register() {}

  @override
  getLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  goSuccessResetPassword() {
    Get.offNamed(AppRoute.successResetpassword);
  }

  @override
  void onInit() {
    password = TextEditingController();
    super.onInit();
  }
}
