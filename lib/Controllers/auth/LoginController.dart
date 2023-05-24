import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  getForgetPassword();
  getRegister();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;

    GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  login() {
      var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valid");
        Get.delete<LoginControllerImp>();
    } else {
      print("Not Valid");
    }
  }

  @override
  getForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

  @override
  getRegister() {
    Get.offNamed(AppRoute.register);

  }


  bool isshowpassword = true;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }


  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
}
