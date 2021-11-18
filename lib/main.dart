import 'package:android_projects/class_30/routes.dart';
import 'package:android_projects/class_31/practice_future.dart';
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
      title: "class 31",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: FuturePractice(),
      /*initialRoute: "/homePage",
      routes: routes,*/
    );
  }
}
