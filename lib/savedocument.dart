import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:msoffice/mswordbasic.dart';

void main() {
  runApp(const SD());
}

class SD extends StatelessWidget {
  const SD({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> str=["Just press the Ctrl + S keys to save the changes."];
  List<String> str2=[" Optionally you can click on the floppy icon available at the top left corner and just above the File tab. This option will also help you save the changes."];
  List<String> str3=["You can also use the third method to save the changes, which is the Save option available just above the Save As option as shown in the above screenshot."];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
            title: Text("Details"),
            leading:IconButton(icon: Icon(Icons.arrow_back),
                tooltip: 'arrow back',
                onPressed:(){Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>MWB()));}
            )),
        body:ListView(children: [Text("Save Document",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
        Text("In this chapter, we will discuss how to save a document in Word 2019.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25)),
          SizedBox(height: 10,),
          Text("Saving New Document ",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("Once you are done with typing in your new Word document, it is time to save your document to avoid losing work you have done on a Word document. Following are the steps to save an edited Word document −Step 1− Click the File tab and select the Save As option.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25)),
        Container(width: 300,
          height: 300,margin: EdgeInsets.all(15),
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/save.png"))),),
        Text("Step 2 − Select a folder where you will like to save the document, Enter the file name which you want to give to your document and Select the Save Asoption, by default it is the.docx format.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          SizedBox(height: 10,),
        Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/saveas.png")))),
        Text("Step 3 − Finally, click on the Save button and your document will be saved with the entered name in the selected folder.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          SizedBox(height: 10,),
        Text("Saving New Changes",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
        Text("There may be an instance when you open an existing document and edit it partially or completely, or an instance where you may like to save the changes in between editing of the document. If you want to save this document with the same name, then you can use either of the following simple options −",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25)),
        Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
        Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str2,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str3,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Text("If your document is new and it was never saved so far, then with either of the three options, Word will display a dialogue box to let you select a folder, and enter the document name as explained in case of saving new document.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),

    ]));
  }
}
