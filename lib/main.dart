import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:rentcar/loginpage/signup.dart';

void main() {
  runApp(GetMaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    home: signup(),
    debugShowCheckedModeBanner: false,
  ));
}
