import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:msoffice/basic2.dart';

void main() {
  runApp(const EVE());
}

class EVE extends StatelessWidget {
  const EVE({super.key});

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
  List<String> str=["Press Tab to go to next column."];
  List<String> str2=["Press Enter to go to next row."];
  List<String> str3=["Press Alt + Enter to enter a new line in the same column."];


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
                onPressed:(){Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>Bas2()));}
            )),
        body:ListView(children: [Text("Entering Values in Excel 2019",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("Entering values in excel sheet is a child’s play and this chapter shows how to enter values in an excel sheet. A new sheet is displayed by default when you open an excel sheet as shown in the below screen shot.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/excelwindow.png"))),),
          Text("Sheet area is the place where you type your text. The flashing vertical bar is called the insertion point and it represents the location where text will appear when you type. When you click on a box then the box is highlighted. When you double click the box, the flashing vertical bar appears and you can start entering your data.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("So, just keep your mouse cursor at the text insertion point and start typing whatever text you would like to type. We have typed only two words" "Hello Excel" "as shown below. The text appears to the left of the insertion point as you type.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
            Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/helloex.png"))),),
          Text("There are following three important points, which would help you while typing −",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str2,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str3,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),

    ]));
  }
}
