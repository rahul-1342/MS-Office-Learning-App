import 'package:flutter/material.dart';
import 'package:msoffice/WordQuiz/quiz_screen.dart';
import 'package:msoffice/backstageview.dart';
import 'package:msoffice/closingadocument.dart';
import 'package:msoffice/details.dart';
import 'package:msoffice/enteringtext.dart';
import 'package:msoffice/explore.dart';
import 'package:msoffice/movearound.dart';
import 'package:msoffice/msword.dart';
import 'package:msoffice/openingadocument.dart';
import 'package:msoffice/savedocument.dart';



void main() {
  runApp(const MWB());
}

class MWB extends StatelessWidget {
  const MWB({super.key});

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
  final subject=["Getting Started Word","Explore Window","Backstage View","Entering Text","Move Around","Save Document","Opening a Document","Closing a Document","Take Quiz"];
  final numbers=["1","2","3","4","5","6","7","8","9"];
  List<dynamic> page=[Det(),Exp(),BSV(),ETT(),MA(),SD(),OD(),CD(),QuizScreen()];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("MS Word Basic"),
        leading: IconButton(icon: Icon(Icons.arrow_back),
            tooltip: 'arrow back',
            onPressed:() {Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>MWord()));}),

      ),
      body:ListView.builder(itemCount:9,itemBuilder:(context, index) {
        return Card(
            child: ListTile(title: Text(subject[index]), onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => page[index]));
            },
                leading: CircleAvatar(radius: 25, child: Text(numbers[index]),

                )));
      })

      
    );
  }

}


