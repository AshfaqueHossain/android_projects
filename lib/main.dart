import 'package:android_projects/class_30/routes.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "HomeWork of class 28,29,30",
      /*theme: _light? _lightTheme:_darkTheme,*/
      /*home: HomePage(),*/
      initialRoute: "/homePage",
      routes: routes,
    );
  }
}
