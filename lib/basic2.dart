import 'package:msoffice/ExcelQuiz/quiz_screen.dart';
import 'package:msoffice/detailex.dart';
import 'package:msoffice/detailex2.dart';
import 'package:msoffice/detailex3.dart';
import 'package:msoffice/detailex4.dart';
import 'package:msoffice/details3.dart';
import 'package:flutter/material.dart';
import 'package:msoffice/msexcel.dart';


void main() {
  runApp(const Bas2());
}

class Bas2 extends StatelessWidget {
  const Bas2({super.key});

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
  final subject=["Getting Started With Excel","Explore Window in Excel","Backstage View in Excel","Entering Values in Excel","Save Workbook in Excel","Check Knowledge"];
  final numbers=["1","2","3","4","5","6"];
  List<dynamic> page=[Det3(),EWE(),BSVE(),EVE(),SWE(),QuizScreen()];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Basics"),
        leading: IconButton(icon: Icon(Icons.arrow_back),
            tooltip: 'arrow back',
            onPressed:() {Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>MSE()));}),
      ),
      body:GestureDetector(child:ListView.builder(itemCount:6,itemBuilder:(context,index) {
        return Card(child: ListTile(title: Text(subject[index],),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => page[index]));},
            leading: CircleAvatar(radius: 25,child: Text(numbers[index]),)));
      }),
      ),);
  }
}


