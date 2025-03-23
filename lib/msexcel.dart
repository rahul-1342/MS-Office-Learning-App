import 'package:msoffice/basic2.dart';
import 'package:flutter/material.dart';
import 'package:msoffice/main.dart';


void main() {
  runApp(const MSE());
}

class MSE extends StatelessWidget {
  const MSE({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  ListHome(),

    );
  }
}
class ListHome extends StatelessWidget
{
  final subject=["Basics","Editing Worksheet","Formatting Cells","Working with Formula","Advanced Operations",];
  final img=["img/Basics","img/Editing Worksheet","img/Formatting Cells","img/Working with Formula","img/Advanced Operations"];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("MS Excel"),
          backgroundColor: Colors.green,
          leading: IconButton(icon: Icon(Icons.arrow_back),
              tooltip: 'arrow back',
              onPressed: () {Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>HomePage()));}),
        ),
        body:GestureDetector(child:ListView.builder(itemCount:5,itemBuilder:(context,index) {
          return Card(child: ListTile(title: Text(subject[index],),
              leading: CircleAvatar(radius: 25, backgroundImage: AssetImage("img/Excel.png"),backgroundColor: Colors.green,)));
        }),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Bas2()));}
        ));

  }
}


