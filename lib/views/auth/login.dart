import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/color.dart';
import 'package:flutter_application_1/core/function/ValidInput.dart';
import 'package:flutter_application_1/core/function/alertExit.dart';
import 'package:flutter_application_1/views/widget/auth/button.dart';
import 'package:flutter_application_1/views/widget/auth/form.dart';
import 'package:get/get.dart';

import '../../Controllers/auth/LoginController.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text('Login', style: Theme.of(context).textTheme.bodyMedium),
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: alertExit,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Form(
            key: controller.formstate,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Text('welcome back',
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 20),
              const Text(
                'Sign In With Your Email And Password',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              FormAuth(
                valid: (val) {
                  return validInput(val!, 5, 100, "email");
                },
                mycontroller: controller.email,
                hinttext: "Enter Your Email",
                iconData: Icons.email_outlined,
                labeltext: "Email",
              ),
              const SizedBox(height: 10),
              GetBuilder<LoginControllerImp>(
                  builder: (controller) => FormAuth(
                    obscureText: controller.isshowpassword,
                    onTapIcon: () {
                      controller.showPassword();
                    },
                valid: (val) {
                  return validInput(val!, 5, 30, "password");
                },
                mycontroller: controller.password,
                hinttext: "Enter Your Password",
                iconData: Icons.email_outlined,
                labeltext: "Password",
              ),),
              const SizedBox(height: 30),
              ButtomAuth(
                  text: "Sign In",
                  onPressed: () {
                    controller.login();
                  }),
              Container(
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: () {
                    controller.getForgetPassword();
                  },
                  child: const Text("forget password ??",
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w100)),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    controller.getRegister();
                  },
                  child: const Text("register",
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w100)),
                ),
              )
            ],
          )
            ,)
          ), 
          ) 
    );
  }
}
