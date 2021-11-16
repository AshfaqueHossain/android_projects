import 'package:android_projects/class_30/forget_password_page.dart';
import 'package:android_projects/class_30/home_page.dart';
import 'package:android_projects/class_30/login_page.dart';
import 'package:android_projects/class_30/registration_page.dart';
import 'package:flutter/material.dart';

final Map<String,WidgetBuilder>routes={
  HomePage.routesName:(context)=>HomePage(),
  LoginPage.routesName:(context)=>LoginPage(),
  RegistrationPage.routesName:(context)=>RegistrationPage(),
  ForgetPasswordPage.routesName:(context)=>ForgetPasswordPage(),
};