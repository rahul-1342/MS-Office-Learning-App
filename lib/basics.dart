import 'package:flutter/material.dart';
import 'package:msoffice/backstageviewppt.dart';
import 'package:msoffice/detail4.dart';
import 'package:msoffice/details11.dart';
import 'package:msoffice/details12.dart';
import 'package:msoffice/details13.dart';
import 'package:msoffice/details6.dart';
import 'package:msoffice/details7.dart';
import 'package:msoffice/details8.dart';
import 'package:msoffice/details9.dart';
import 'package:msoffice/mspowerpoint.dart';
import 'package:msoffice/details2.dart';
import 'package:msoffice/pptQuiz/quiz_screen.dart';

void main() {
  runApp(const Bas());
}

class Bas extends StatelessWidget {
  const Bas({super.key});

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
  final subject=["Getting Started With Powerpoint","Explore Window","Backstage View","Create Presentation","Add New Slides","Adding Text in Boxes","Adding New Text Boxes","Rearranging Slides","Adding Slide Notes","Managing Section","Quizz"];
  final numbers=["1","2","3","4","5","6","7","8","9","10","11"];
  List<dynamic> page=[Det2(),Exp2(),BSVP(),CP(),AS(),ATB(),ANTB(),RS(),ASN(),MS(),QuizScreen()];
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
            onPressed:() {Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>MSP()));}),
      ),
      body:GestureDetector(child:ListView.builder(itemCount:11,itemBuilder:(context,index) {
        return Card(child: ListTile(title: Text(subject[index],)
            ,onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => page[index]));},
            leading: CircleAvatar(radius: 25,child: Text(numbers[index]),)));
      }),
      ),);
  }
}


