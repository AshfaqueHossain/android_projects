import 'package:flutter/material.dart';

class FuturePractice extends StatelessWidget {
  const FuturePractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class 31"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
         print("1");
         myTypedFuture().then((value) => null);
         //print(Future.value());
         print("3");
        }, child: Text("Future")),
      ),
    );
  }
}

Future<String> myTypedFuture() async {
   //Future.delayed(Duration(seconds: 5));
  await Future.delayed(Duration(seconds: 6));
  print("5");
  return Future.value("Seconds");
}
