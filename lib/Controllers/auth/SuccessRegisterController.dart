import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessRegisterController extends GetxController {
  checkemail();
  getLogin();
}

class SuccessRegisterControllerImp extends SuccessRegisterController { 

  @override
  checkemail() {}

  @override
 @override
  getLogin() {
    Get.offAllNamed(AppRoute.login);
  }
  @override
  void onInit() { 

    super.onInit();
  }

 
}