import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/Controllers/HomeController.dart';
import 'package:flutter_application_1/core/constant/color.dart';
import 'package:flutter_application_1/data/static/static.dart';
import 'package:get/get.dart';

class HomeDoits extends StatelessWidget {
  const HomeDoits({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    homeList.length,
                    (index) => AnimatedContainer(
                          margin: EdgeInsets.only(right: 6),
                          duration: const Duration(
                            milliseconds: 900,
                          ),
                          width: controller.current == index ? 10 :6,
                          height: 6,
                          decoration: BoxDecoration(
                              color: AppColor.primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                        )),
              ],
            ));
  }
}
