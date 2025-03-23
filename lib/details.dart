import 'package:flutter/material.dart';
import 'package:msoffice/mswordbasic.dart';



class Det extends StatelessWidget {

  const Det({Key? key}) : super(key: key);


  @override

  Widget build(BuildContext context) {

    // Material App

    return MaterialApp(
      debugShowCheckedModeBanner: false,


      // Scaffold Widget

        home: Scaffold(

          appBar: AppBar(

            // AppBar takes a Text Widget

            // in it's title parameter

              title: const Text('Details'),
              leading: IconButton(icon: Icon(Icons.arrow_back),
                  tooltip: 'arrow back',
                  onPressed: () {Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>MWB()));}
              )),

          body:ListView(children: [Text("Getting Started Word",style: TextStyle(fontSize:35 ,color: Colors.lightBlue),),
            SizedBox(height: 10,),
    Text("In this chapter,we will discuss how to get started with Word 2019.We will understand how to start a Word 2019 application insimple steps.Assuming you have Microsoft Office 2019 installed in your PC,to start the Word application,follow these steps- "
    "Step 1 - Click the Start Button.",textAlign:TextAlign.justify,style:TextStyle(fontSize:25),),
            Container(width: 300,
    height: 300,margin: EdgeInsets.all(15),
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/Screenshot.png"))),),
    Text("Step 2 - Search for Microsoft Word 2019 from the start and click it.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
    Container(width: 300,
    height: 300,margin: EdgeInsets.all(15),
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/click.png")))),
    Text("Step 3 - After open Word 2019 then click on Blank Document.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
    Container(width: 300,
    height: 300,margin: EdgeInsets.all(15),
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/blank.png")))),
    Text("This will launch the Microsoft Word 2019 application and you will see the following window.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
    Container(width: 300,
    height: 300,margin: EdgeInsets.all(15),
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/window.png"))))],

        )));

  }
}