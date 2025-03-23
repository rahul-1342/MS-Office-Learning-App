import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:msoffice/basics.dart';
import 'package:msoffice/mswordbasic.dart';

void main() {
  runApp(const ETT());
}

class ETT extends StatelessWidget {
  const ETT({super.key});

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
  List<String> str=["You do not need to press Enter to start a new line. As the insertion point reaches the end of the line, Word automatically starts a new one. You will need to press Enter, to add a new paragraph."];
  List<String> str2=["When you want to add more than one space between words, use the Tab key instead of the spacebar. This way you can properly align text by using the proportional fonts."];

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
        body:ListView(children: [Text("Entering Text",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text(" In this chapter, let us discuss how to enter text with Microsoft Word 2019. Let us see how easy it is to enter text in a Word document. We assume you know that when you start Word, it displays a new document by default as shown below −",textAlign:TextAlign.justify,style: TextStyle(fontSize:27),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/text.png"))),),
          Text("Document area is the area where you type your text. The flashing vertical bar is called the insertion point and it represents the location where the text will appear when you type. keep the cursor at the text insertion point and start typing the text. We typed only two words Hello Word as shown below. The text appears to the left of the insertion point as you type −",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/hello.png")))),
          Text("The following are the two important points that will help you while typing You do not need to press Enter to start a new line. As the insertion point reaches the end of the line, Word automatically starts a new one. You will need to press Enter, to add a new paragraph.When you want to add more than one space between words, use the Tab key instead of the spacebar. This way you can properly align text by using the proportional fonts.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str2,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),)

        ]));
  }
}
