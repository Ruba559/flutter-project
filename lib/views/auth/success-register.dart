import 'package:flutter/material.dart';
import 'package:flutter_application_1/Controllers/auth/SuccessRegisterController.dart';
import 'package:flutter_application_1/core/constant/color.dart';
import 'package:flutter_application_1/views/widget/auth/button.dart';
import 'package:get/get.dart';

class SuccessRegister extends StatelessWidget {
  const SuccessRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessRegisterControllerImp controller = Get.put(SuccessRegisterControllerImp()) ;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text('Success Register',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          const Center(
              child: Icon(
            Icons.check_circle_outline,
            size: 200,
            color: AppColor.primaryColor,
          )),
          Text("37".tr,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 30)),
          Text("38".tr),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: ButtomAuth(
                text: "31".tr,
                onPressed: () {
                  controller.getLogin();
                }),
          ),
          const SizedBox(height: 30)
        ]),
      ),
    );
  }
}
