import 'package:android_projects/class_30/forget_password_page.dart';
import 'package:android_projects/class_30/login_page.dart';
import 'package:android_projects/class_30/registration_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routesName='/homePage';
  var orientation, size, height, width;
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
ThemeData _lightTheme= ThemeData(
  accentColor: Colors.lightBlueAccent,
  primaryColor: Colors.lightBlue,
  brightness: Brightness.light,
);
ThemeData _darkTheme= ThemeData(
  accentColor: Colors.deepOrangeAccent,
  primaryColor: Colors.deepOrange,
  brightness: Brightness.dark,
);

bool _dark= false;


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    var orientation= MediaQuery.of(context).orientation;
    var size= MediaQuery.of(context).size;
    var height= size.height;
    var width= size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "HomeWork of class 28,29,30",
      theme: _dark? _darkTheme: _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
          actions: [
            Switch(
                value: _dark,
                onChanged: (toggle){
                  setState((){
                    _dark=toggle;
                  });
                }),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Image.network("https://scontent.fcgp6-1.fna.fbcdn.net/v/t1.6435-9/s960x960/181984942_112849790958945_487789474709347526_n.png?_nc_cat=109&ccb=1-5&_nc_sid=e3f864&_nc_eui2=AeHVujgeaWZoMmYAlxHsMXmUaSEQALKsQDRpIRAAsqxANLUY1PZHn2gneZUCxGgaL9nULDjEEBaie7jayOpZi1Et&_nc_ohc=Utp0UGoFvoAAX8MDgM5&_nc_ht=scontent.fcgp6-1.fna&oh=5a18fd9ff9901cf76a2036c3b7c753f3&oe=61B94D6E"),
              ),
              SizedBox(
                height: height*.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      /*mainAxisAlignment: MainAxisAlignment.center,*/
                      children: [
                        Text("New on our Website ?\n        Please Click",),
                        SizedBox(
                          height: height*.01,
                        ),
                        ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, RegistrationPage.routesName);
                          },
                          child: const Text("Registration"),
                        ),
                      ],
                    ),
                  ),
                  /*SizedBox(
                    width: width*.01,
                  ),*/
                  Container(
                    child: Column(
                      children: [
                        Text("Already have an Id ?\n         Then Click"),
                        SizedBox(
                          height: height*.01,
                        ),
                        ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, LoginPage.routesName);
                          },
                          child: const Text("LogIn"),
                        ),
                      ],
                    ),
                  ),
                  /*SizedBox(
                    width: width*.01,
                  ),*/
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text("Don't remember your Id/Password ?\n                        Then Click"),
                        SizedBox(
                          height: height*.01,
                        ),
                        ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, ForgetPasswordPage.routesName);
                          },
                          child: const Text("Forget Password"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
