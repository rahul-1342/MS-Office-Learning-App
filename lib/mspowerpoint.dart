import 'package:msoffice/main.dart';
import 'package:flutter/material.dart';
import 'package:msoffice/basics.dart';
void main() {
  runApp(const MSP());
}

class MSP extends StatelessWidget {
  const MSP({super.key});

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
  final subject=["Basics","Editing Presentation","Formatting Presentation","Working with Multimedia","Sharing Presentaion"];
  final img=["img/Basics","img/Editing Presentation","img/Formatting Presentation","img/Working with Multimedia","img/Sharing Presentaion"];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("MS PowerPoint"),
          backgroundColor: Colors.deepOrange,
          leading: IconButton(icon: Icon(Icons.arrow_back),
              tooltip: 'arrow back',
              onPressed: () {Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>HomePage()));}),
        ),
        body:GestureDetector(child:ListView.builder(itemCount:5,itemBuilder:(context,index) {
          return Card(child: ListTile(title: Text(subject[index],),
              leading: CircleAvatar(radius: 25, backgroundImage: AssetImage("img/PowerPoint.png"),backgroundColor: Colors.deepOrange,)));
        }),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Bas()));}
    ));

  }
}

