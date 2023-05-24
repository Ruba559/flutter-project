import 'package:flutter/material.dart';
import 'package:flutter_application_1/Controllers/auth/LoginController.dart';
import 'package:flutter_application_1/core/constant/color.dart';
import 'package:flutter_application_1/core/function/ValidInput.dart';
import 'package:flutter_application_1/core/function/alertExit.dart';
import 'package:flutter_application_1/views/widget/auth/button.dart';
import 'package:flutter_application_1/views/widget/auth/form.dart';
import 'package:get/get.dart';

import '../../Controllers/auth/RegisterController.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=> RegisterControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text('Register', style: Theme.of(context).textTheme.bodyMedium),
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: alertExit,
         child: GetBuilder<RegisterControllerImp>(
        builder: (controller)=> 
     
       Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
         child: Form(
            key: controller.formstate,
          
        
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Sign Up With Your Email And Password',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              FormAuth(
                 valid: (val) {
              return validInput(val!, 5, 30, "username");
            },
                mycontroller: controller.name,
                hinttext: "Enter Your Name",
                iconData: Icons.person,
                labeltext: "Name",
              ),
              const SizedBox(height: 10),
              FormAuth(
                 valid: (val) {
              return validInput(val!, 5, 30, "email");
            },
                mycontroller: controller.email,
                hinttext: "Enter Your Email",
                iconData: Icons.email_outlined,
                labeltext: "Email",
              ),
              const SizedBox(height: 10),
              FormAuth(
                  valid: (val) {
              return validInput(val!, 5, 30, "phone");
            },
                mycontroller: controller.phone,
                hinttext: "Enter Your Phone",
                iconData: Icons.phone,
                labeltext: "Phone",
              ),
              const SizedBox(height: 10),
              FormAuth(
                  valid: (val) {
              return validInput(val!, 5, 30, "Password");
            },
                mycontroller: controller.password,
                hinttext: "Enter Your Password",
                iconData: Icons.password,
                labeltext: "Password",
              ),
            
              ButtomAuth(
                  text: "Register",
                  onPressed: () {
                    controller.register();
                  }),
              Container(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                    controller.getLogin();
                  },
                  child: const Text("login",
                      style: TextStyle(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.w100,
                      )),
                ),
              )
            ],
          )
          ) ) ), )
    );
  }
}
