import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/color.dart';

ThemeData themeEnglish = ThemeData(primarySwatch: Colors.blue,
          fontFamily: "Cairo",
          textTheme: const TextTheme(
              bodyMedium: TextStyle(height: 2, color: AppColor.grey , fontSize: 20),
              bodyLarge: TextStyle(fontWeight: FontWeight.bold , fontSize: 25)
              )
);
ThemeData themeArabic = ThemeData(primarySwatch: Colors.blue,
          fontFamily: "Cairo",
          textTheme: const TextTheme(
              bodyMedium: TextStyle(height: 2, color: AppColor.grey , fontSize: 20),
              bodyLarge: TextStyle(fontWeight: FontWeight.bold , fontSize: 25)
              )
);