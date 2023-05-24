import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/color.dart';
import 'package:flutter_application_1/core/function/ValidInput.dart';
import 'package:flutter_application_1/views/widget/auth/button.dart';
import 'package:flutter_application_1/views/widget/auth/form.dart';
import 'package:get/get.dart';

import '../../Controllers/auth/ForgetPasswordController.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text('Forget Password',
            style: Theme.of(context).textTheme.bodyMedium),
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'check email',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              FormAuth(
                  valid: (val) {
              return validInput(val!, 5, 100, "email");
            },
                mycontroller: controller.email,
                hinttext: "Enter Your Email",
                iconData: Icons.email,
                labeltext: "Email",
              ),
              const SizedBox(height: 30),
              ButtomAuth(
                  text: "check",
                  onPressed: () {
                    controller.getVerifyCode();
                  }),
            ],
          )),
    );
  }
}
