import 'package:flutter/material.dart';
import 'package:flutter_application_1/Services/MyService.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/data/static/static.dart';

abstract class HomeControllerl extends GetxController {
  next();
  pageChange(int index);
}

class HomeController extends HomeControllerl {
  @override
  int current = 0;

  MyServices myServices = Get.find();



  late PageController pageController;
  @override
  next() {
    current++;
   myServices.sharedPreferences.setBool('home', false);
    if (current > homeList.length - 1) {
        myServices.sharedPreferences.setString("onboarding", "1") ; 
      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(current,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  pageChange(int index) {
    current = index;
    update();
  }

  // int counter = 0;

  // void increment() {
  //   counter++;

  //   update();
  // }
  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
