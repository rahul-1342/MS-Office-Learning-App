import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:msoffice/mswordbasic.dart';

void main() {
  runApp(const Exp());
}

class Exp extends StatelessWidget {
  const Exp({super.key});

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
      home: BulletListPage(),
    );
  }
}

class BulletListPage extends StatefulWidget {
  @override
_BulletListPageState createState() =>_BulletListPageState();
}

class _BulletListPageState extends State<BulletListPage> {
  List<String> str=["Tabs− These appear across the top of the Ribbon and contain groups of related commands. Home, Insert, Page Layout are examples of ribbon tabs."];

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
            title: Text("MS Word Basic"),
            leading:IconButton(icon: Icon(Icons.arrow_back),
                tooltip: 'arrow back',
                onPressed:(){Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>MWB()));}
            )),
        body:ListView(children: [Text("Explore Window ",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("In this chapter we will understand how to explore Window in Word 2019. Following is the basic window which you get when you start the Word application. Let us understand the various important parts of this window",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/explore.png"))),),
          Text("File Tab ",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("The File tab replaces the Office button from Word 2019. You can click it to check the Backstage view. This is where you come when you need to open or save files, create new documents, print a document, and do other file-related operations.  ",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Quick Access ToolBar  ",style: TextStyle(fontSize:35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("This you will find just above the File tab. This is a convenient resting place for the mostfrequently used commands in Word. You can customize this toolbar based on your comfort.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Text("Ribbon",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("Ribbon contains commands organized in three components −",style: TextStyle(fontSize: 25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/ribbon.png")))),
          Text("Ribbon contains commands organized in three components −",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25)),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),)
          ,Text("Title",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("bar This lies in the middle and at the top of the window. Title bar shows the program and document titles.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Rulers",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("Word has two rulers - a horizontal ruler and a vertical ruler. The horizontal ruler appears just beneath the Ribbon and is used to set margins and tab stops. The vertical ruler appears on the left edge of the Word window and is used to gauge the vertical position of elements on the page.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Help",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("The Help Icon can be used to get word related help anytime you like. This provides nice tutorial on various subjects related to word.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Zoom",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("Control Zoom control lets you zoom in for a closer look at your text. The zoom control consists of a slider that you can slide left or right to zoom in or out; you can click the + buttons to increase or decrease the zoom factor.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("View Buttons",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("The group of five buttons located to the left of the Zoom control, near the bottom of the screen, lets you switch through the Word's various document views. ",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Document Area",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("This is the area where you type. The flashing vertical bar is called the insertion point and it represents the location where text will appear when you type.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Status Bar",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("This displays the document information as well as the insertion point location. From left to right, this bar contains the total number of pages and words in the document, language, etc."
              "You can configure the status bar by right-clicking anywhere on it and by selecting or deselecting options from the provided list.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Dialog Box Launcher",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("This appears as very small arrow in the lower-right corner of many groups on the Ribbon. Clicking this button opens a dialog box or task pane that provides more options about the group.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),

        ]));
  }
}
