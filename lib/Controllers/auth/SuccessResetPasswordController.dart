import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController {
  checkemail();
  getLogin();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController { 

  @override
  checkemail() {}

  @override
  getLogin() {
    Get.offAllNamed(AppRoute.login);
  }

  @override
  void onInit() { 

    super.onInit();
  }

 
}