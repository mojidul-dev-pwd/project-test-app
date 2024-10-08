import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Test App",
    //theme: ThemeData(
      //primarySwatch: Colors.blue,
    //),
    home: Scaffold(body: MyApp2())
  ));
}

class MyApp2 extends StatefulWidget {
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  String txt = "";
  @override
  void initState() {
    txt = "Statefull Widget";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(txt),
              ElevatedButton(
                  onPressed: () {
                    print("on press");
                    setState(() {
                      txt = "On Press XYZ";
                    });
                  },
                  child: Text("Change")
              )
            ],
          )
      ),
    );
  }
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


