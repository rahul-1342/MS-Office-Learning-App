import 'package:flutter/material.dart';
import 'package:msoffice/AccessQuiz/quiz_screen.dart';
import 'package:msoffice/addingdata.dart';
import 'package:msoffice/basics3.dart';
import 'package:msoffice/createbdb.dart';
import 'package:msoffice/createdatabase.dart';
import 'package:msoffice/forms.dart';
import 'package:msoffice/howcreatetables.dart';
import 'package:msoffice/macros.dart';
import 'package:msoffice/main.dart';
import 'package:msoffice/module.dart';
import 'package:msoffice/report.dart';

void main() {
  runApp(const MSA());
}

class MSA extends StatelessWidget {
  const MSA({super.key});

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
  final subject=["Basics","Create Database","Create Blank Database","How Create Tables","Adding Data","Forms","Report","Macro","Module","Take Quizz"];
  final img=["img/Basics","img/Create Database","img/Create Blank Database","img/How Create Tables","img/Adding Data","img/Forms","img/Report","img/Macros","img/Modules","img/Quizz"];
  List<dynamic> page=[Bas3(),CDB(),CBDB(),HCT(),AD(),FM(),RT(),MCS(),ME(),QuizScreen()];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("MS Access"),
          backgroundColor: Colors.red,
          leading: IconButton(icon: Icon(Icons.arrow_back),
              tooltip: 'arrow back',
              onPressed: () {Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>HomePage()));}),
        ),
        body:GestureDetector(child:ListView.builder(itemCount:10,itemBuilder:(context,index) {
          return Card(child: ListTile(title: Text(subject[index],),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => page[index]));},
              leading: CircleAvatar(radius: 25, backgroundImage: AssetImage("img/Access.png"),backgroundColor: Colors.red,)));
        }),
        ));

  }
}


