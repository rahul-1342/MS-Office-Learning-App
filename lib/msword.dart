import 'package:flutter/material.dart';
import 'package:msoffice/main.dart';
import 'package:msoffice/mswordbasic.dart';

void main() {
  runApp(const MWord());
}

class MWord extends StatelessWidget {
  const MWord({super.key});

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
  final subject=["MS Word Basics","Editing Documents","Formatting Text","Formatting Pages","Working with Tables","Advanced Operations"];
  final img=["img/MS Word Basics","img/Editing Documents","img/Formatting Text","img/Formatting Pages","img/Working with Tables","img/Advanced Operations"];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("MS Word"),
          backgroundColor: Colors.blue,
          leading: IconButton(icon: Icon(Icons.arrow_back),
              tooltip: 'arrow back',
              onPressed:() {Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>HomePage()));}),
        ),
        body:GestureDetector(child:ListView.builder(itemCount:6,itemBuilder:(context,index) {
          return Card(child: ListTile(title: Text(subject[index],),
              leading: CircleAvatar(radius: 25, backgroundImage: AssetImage("img/Word.png"),)));
        }),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MWB()));}
        ));
    }
}


