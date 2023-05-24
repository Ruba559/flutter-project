import 'package:flutter/material.dart';
import 'package:flutter_application_1/Controllers/HomeController.dart';
import 'package:get/get.dart';

import '../widget/home/button.dart';
import '../widget/home/doits.dart';
import '../widget/home/slide.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
        appBar: AppBar(
          title: const Text('home'),
        ),
        body: Column(
          children: [
         const HomeSlide(),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    HomeDoits(),
                    Spacer(
                      flex: 1,
                    ),
                    HomeButton(),
                  ],
                ))
          ],
        ));
  }
}
