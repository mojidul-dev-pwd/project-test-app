import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/login/login_screen.dart';

void main() {
  runApp(MaterialApp(
    title: "Test App",
    //theme: ThemeData(
      //primarySwatch: Colors.blue,
    //),
    home: Scaffold(body: MyApp())
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext buildContext){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton("OK"),
          SizedBox(
            height: 10,
          ),
          CustomButton("Save"),
          SizedBox(
            height: 10,
          ),CustomButton("Click"),
          SizedBox(
            height: 10,
          ),
          CustomButton("NO")
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget{
  final String title;
  CustomButton(this.title);

  Widget build(BuildContext buildContext) {
    return InkWell(
      onTap: (){
        print("On Tap");
      },
      child: Container(
        height: 40,
        width: 100,
        decoration:
        BoxDecoration(shape: BoxShape.rectangle, color: Colors.blue),
        child: Center(child: Text(title),),
      ),
    );
  }
}


