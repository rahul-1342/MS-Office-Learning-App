import 'package:flutter/material.dart';
import 'package:msoffice/OutlookQuiz/quiz_screen.dart';
import 'package:msoffice/addanatttoanemmes.dart';
import 'package:msoffice/addemsitomes.dart';
import 'package:msoffice/details5.dart';
import 'package:msoffice/forepyoanemmes.dart';
import 'package:msoffice/mail.dart';
import 'package:msoffice/main.dart';
import 'package:msoffice/oporsaanemmesatt.dart';
import 'package:msoffice/quickaccessbar.dart';


void main() {
  runApp(const MSO());
}

class MSO extends StatelessWidget {
  const MSO({super.key});

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
  final subject=["Get Started","Quick Access Bar","Mail","Add an Email Signature to Messages","Forward or Reply to an Email Message","Add an Attachment to an Email Message","Open or Save an Email Message Attachment","Take Quiz"];
  final img=["img/Get started","img/Quick access bar","img/Mail","img/Add an email signature to messages","img/Forward or reply to an email message","img/Add an attachment to an email message","img/Open or save an email message attachment","img/Quiz"];
  List<dynamic> page=[Det5(),QAB(),ML(),AESM(),FREM(),AAEM(),OSEMA(),QuizScreen()];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("MS Outlook"),
          backgroundColor: Colors.blue,
          leading: IconButton(icon: Icon(Icons.arrow_back),
              tooltip: 'arrow back',
              onPressed: () {Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>HomePage()));}),
        ),
        body:GestureDetector(child:ListView.builder(itemCount:8,itemBuilder:(context,index) {
          return Card(child: ListTile(title: Text(subject[index],),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => page[index]));},
              leading: CircleAvatar(radius: 25, backgroundImage: AssetImage("img/OutLook.png"),backgroundColor: Colors.blue,)));
        }),
        ));

  }
}


