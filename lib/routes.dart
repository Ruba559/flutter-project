import 'package:flutter_application_1/Middleware/AuthMiddleware.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:flutter_application_1/views/auth/forget-password.dart';
import 'package:flutter_application_1/views/auth/login.dart';
import 'package:flutter_application_1/views/auth/register.dart';
import 'package:flutter_application_1/views/auth/reset-password.dart';
import 'package:flutter_application_1/views/auth/success-register.dart';
import 'package:flutter_application_1/views/auth/success-reset-password.dart';
import 'package:flutter_application_1/views/auth/verify-code-register.dart';
import 'package:flutter_application_1/views/auth/verify-code.dart';
import 'package:flutter_application_1/views/screen/home.dart';
import 'package:flutter_application_1/views/screen/language.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Language() , middlewares: [
    AuthMiddleware()
  ]),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.register, page: () => const Register()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successResetpassword, page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successRegister, page: () => const SuccessRegister()),
  GetPage(name: AppRoute.home, page: () => const Home()),
  GetPage(name: AppRoute.verfiyCodeRegister, page: () => const VerfiyCodeRegister()),
];


// Map<String, Widget Function(BuildContext)> routes = {
//   AppRoute.login: (context) => const login(),
//   AppRoute.register: (context) => const Register(),
//   AppRoute.home: (context) => const Home(),
//   AppRoute.language: (context) => const Language(),
//   AppRoute.forgetPassword: (context) => const ForgetPassword(),
//   AppRoute.verifyCode: (context) => const VerfiyCode(),
//   AppRoute.resetPassword: (context) => const ResetPassword(),

//   AppRoute.successResetpassword: (context) => const SuccessResetPassword(),
//   AppRoute.successRegister: (context) => const SuccessRegister(),
//     AppRoute.verifyCodeRegister: (context) => const VerfiyCodeRegister(),
// };

