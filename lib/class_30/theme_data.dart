import 'package:flutter/material.dart';

class Themedata extends StatelessWidget {
  const Themedata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

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

    bool _light= false;

    return Container();
  }
}
