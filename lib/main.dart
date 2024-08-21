import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'ListView Deep Dive';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primarySwatch: Colors.blue),
      //home: HomePage(title: title),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  //final String title;

  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final items = List.generate(100, (counter) => 'Item: $counter');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: buildListViews(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            label: 'Basic',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded),
            label: 'Vertical',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.line_style),
            label: 'Horizontal',
          ),
        ],
        onTap: (int index) => setState(() => this.index = index),
      ),
    );
  }

  Widget buildListViews() {
    if (index == 0) {
      return buildBasicListView();
    } else if (index == 1) {
      return buildVerticalListView();
    } else if (index == 2) {
      return buildHorizontalListView();
    } else {
      return Container();
    }
  }

  // Basic List View Builder method
  Widget buildBasicListView() {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.brown.shade800,
            child: Text('AK'),
          ),
          title: Text('Ab Karim'),
          subtitle: Text('Flutter Developer'),
          trailing: Icon(Icons.star, color: Colors.orange),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.brown.shade800,
            child: Text('AR'),
          ),
          title: Text('Ab Rarim'),
          subtitle: Text('Android Developer'),
          trailing: Icon(Icons.star, color: Colors.orange),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.brown.shade800,
            child: Text('AB'),
          ),
          title: Text('Abul'),
          subtitle: Text('iOS Developer'),
          trailing: Icon(Icons.star, color: Colors.orange),
        ),
      ],
    );
  }

  // Vertical List View Builder method
  Widget buildVerticalListView() {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: Colors.black,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
        );
      },
    );
  }

  // Horizontal List View Builder method
  Widget buildHorizontalListView() {
    return ListView.separated(
      padding: EdgeInsets.all(16),
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) =>
          Divider(
            color: Colors.black,
          ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          width: 100,
          height: 50,
          child: ListTile(
            title: Text(items[index]),
          ),
        );
      },
    );
  }


  }


/*

void main() {
runApp(MaterialApp(
title: "Test App",
home: Scaffold(
 appBar: AppBar(title: Text("This is App Bar"),),
      body: MyAppListView()
 )
 ));
 
class MyAppListView extends StatefulWidget {
  const MyAppListView({super.key});

  @override
  State<MyAppListView> createState() => _MyAppListViewState();
}

class _MyAppListViewState extends State<MyAppListView> {
  List<int> list = <int>[];

  @override
  void initState() {
    for(int i =1; i<51;i++){
      list.add(i);
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext cnx, int index){
          return ListTile(
            title: Text("Item no ${list[index]}"),
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.pink
              ),
            ),
            trailing: Icon(Icons.arrow_forward),
          );
        }
    );
    */
    /*
    return ListView(
      children: [
        ListTile(
          title: Text("Item 1"),
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("Item 2"),
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("Item 3"),
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("Item 4"),
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        )
      ],
    );
   */
  //}
//}

/*
class MyAppRow extends StatelessWidget {
  const MyAppRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Text("Hi"),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Mojidul"),
            Text("Islam")
          ],
        ),
        Text("Software"),
        Text("Engineer")
      ]
    );
  }
}


class MyApp3 extends StatelessWidget {
  const MyApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blue, //apply if decoration not use
      height: 300,
      width: 300,
      child: Text("Hello Container"),
      alignment: Alignment.center,
      margin: EdgeInsets.all(24.0),
      padding: EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        color: Colors.green,
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.pink,
           width: 2
        )
      ),
      transform: Matrix4.rotationZ(.5),
    );
  }
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
                    txt = "xyz";
                    print("on press $txt");
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
*/


