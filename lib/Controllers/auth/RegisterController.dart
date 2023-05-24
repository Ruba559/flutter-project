import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/class/statusrequest.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:flutter_application_1/core/function/handingdatacontroller.dart';
import 'package:flutter_application_1/data/remote/auth/register.dart';
import 'package:get/get.dart';

abstract class RegisterController extends GetxController {
  register();
  getLogin();
}

class RegisterControllerImp extends RegisterController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;
  late TextEditingController name;

  StatusRequest? statusRequest;

  RegisterData registerData = RegisterData(Get.find());

  List data = [];

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  register() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await registerData.postdata(
          name.text, email.text, phone.text, password.text);
      print("=============================== Controller $response ");
     
      statusRequest = handlingData(response); 
      if (StatusRequest.success == statusRequest) {
       // if (response['status'] == "success") {
          Get.offNamed(AppRoute.verfiyCodeRegister ,arguments: {
            "email" : email.text
          });
     //   } else {
          // Get.defaultDialog(
          //     title: "ُWarning",
          //     middleText: "Phone Number Or Email Already Exists");
          // statusRequest = StatusRequest.failure;
       // }
      }
      update();
    } else {}
  }

  @override
  getLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    name = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }
}
