import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Controllers/HomeController.dart';
import 'package:flutter_application_1/core/constant/color.dart';
import 'package:flutter_application_1/data/static/static.dart';
import 'package:get/get.dart';

class HomeSlide extends GetView<HomeController> {
  const HomeSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return    Expanded(
              flex: 2,
              child: PageView.builder(
                  controller: controller.pageController,
                  onPageChanged: (val) {
                    controller.pageChange(val);
                  },
                  itemCount: homeList.length,
                  itemBuilder: (context, i) => Column(
                        children: [
                          Text(
                            homeList[i].title!,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(height: 80),
                          Image.asset(
                            homeList[i].image!,
                            width: 200,
                            height: 230,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 30),
                          Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              child: Text(
                                homeList[i].body!,
                                style: Theme.of(context).textTheme.bodyMedium,
                              )),
                        ],
                      )),
            );
  }
}