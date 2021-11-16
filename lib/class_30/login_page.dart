import 'package:android_projects/class_30/forget_password_page.dart';
import 'package:android_projects/class_30/home_page.dart';
import 'package:android_projects/class_30/registration_page.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  static const String routesName='/loginPage';
  var orientation, size, height, width;
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
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


class _LoginPageState extends State<LoginPage> {

  TextEditingController nameController =TextEditingController();
  TextEditingController passwordController =TextEditingController();

  @override
  Widget build(BuildContext context) {

    var orientation= MediaQuery.of(context).orientation;
    var size= MediaQuery.of(context).size;
    var height= size.height;
    var width= size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"HomeWork of class 28,29,30",
      theme: _dark? _darkTheme: _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Login Page"),
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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: Image.network("https://scontent.fcgp4-1.fna.fbcdn.net/v/t1.6435-9/p640x640/181984942_112849790958945_487789474709347526_n.png?_nc_cat=109&ccb=1-5&_nc_sid=e3f864&_nc_ohc=4wzmNZTeG9kAX86MLp9&_nc_ht=scontent.fcgp4-1.fna&oh=62ab100b0db6109d3dae0a98a4b2aad9&oe=61ABFD66",
                  height: height*.5,
                  width: width*.8,
                  ),
                ),
                SizedBox(
                  width: width*.03,
                ),
                Container(
                  height: height*.5,
                  width: width*.5,
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'User Name',
                              hintText: 'Enter Your Name',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: TextField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                              hintText: 'Enter Password',
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text("I agree with all the terms and condition"),
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
                      ],
                    ),
                  ),
                ),

                Column(
                  /*mainAxisAlignment: MainAxisAlignment.center,*/
                  children: [
                    Text("Don't have a Id yet ?\n        Please Click",),
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
                SizedBox(
                  height: height*.05,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text("Can't remember your Id/Password ?\n                        Then Click"),
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
                SizedBox(
                  height: height*.05,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text("Go back to"),
                      SizedBox(
                        height: height*.01,
                      ),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, HomePage.routesName);
                        },
                        child: const Text("HomePage"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height*.04,
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
