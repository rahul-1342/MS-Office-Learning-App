import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:msoffice/basic2.dart';

void main() {
  runApp(const EWE());
}

class EWE extends StatelessWidget {
  const EWE({super.key});

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

  List<String> str=["Tabs− They appear across the top of the Ribbon and contain groups of related commands. Home,Insert,Page Layout are examples of ribbon tabs."];
  List<String> str2=[" Groups− They organize related commands; each group name appears below the group on the Ribbon. For example, a group of commands related to fonts or a group of commands related to alignment, etc."];
  List<String> str3=["Commands− Commands appear within each group as mentioned above."];
  List<String> str4=["Normal Layout view − This displays the page in normal view."];
  List<String> str5=["Page Layout view − This displays pages exactly as they will appear when printed. This gives a full screen look of the document."];
  List<String> str6=["Page Break view − This shows a preview of where pages will break when printed."];
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
        body:ListView(children: [Text("Explore Window in Excel 2019",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("The following basic window appears when you start the excel application. Let us now understand the various important parts of this window.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/excelwindow.png"))),),
          Text("File Tab",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("The File tab replaces the Office button from Excel 2018. You can click it to check the Backstage view, where you come when you need to open or save files, create new sheets, print a sheet, and do other file-related operations.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Text("Quick Access Toolbar",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("You will find this toolbar just above the File tab and its purpose is to provide a convenient resting place for the Excel's most frequently used commands. You can customize this toolbar based on your comfort.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Text("Ribbon",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/ribbonex.png"))),),
          Text("Ribbon contains commands organized in three components −",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          SizedBox(height: 10,),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str2,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str3,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Text("Title Bar",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("This lies in the middle and at the top of the window. Title bar shows the program and the sheet titles.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25)),
           Text("Help",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("The Help Icon can be used to get excel related help anytime you like. This provides nice tutorial on various subjects related to excel.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Text("Help",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("The Help Icon can be used to get PowerPoint related help anytime you need. Clicking on the" "?" "opens the PowerPoint Help window where you have a list of common topics to browse from. You can also search for specific topics from the search bar at the top.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Text("Zoom Control",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("Zoom control lets you zoom in for a closer look at your text. The zoom control consists of a slider that you can slide left or right to zoom in or out. The + buttons can be clicked to increase or decrease the zoom factor.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Text("View Buttons",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("The group of three buttons located to the left of the Zoom control, near the bottom of the screen, lets you switch among excel's various sheet views.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str4,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str5,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str6,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Text("Sheet Area",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("The area where you enter data. The flashing vertical bar is called the insertion point and it represents the location where text will appear when you type.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Text("Row Bar",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("Rows are numbered from 1 onwards and keeps on increasing as you keep entering data. Maximum limit is 1,048,576 rows.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
         Text("Column Bar",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("Columns are numbered from A onwards and keeps on increasing as you keep entering data. After Z, it will start the series of AA, AB and so on. Maximum limit is 16,384 columns.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Text("Status Bar",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("This displays the sheet information as well as the insertion point location. From left to right, this bar can contain the total number of pages and words in the document, language etc.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Text("You can configure the status bar by right-clicking anywhere on it and by selecting or deselecting options from the provided list.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Text("Dialog Box Launcher",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("This appears as a very small arrow in the lower-right corner of many groups on the Ribbon. Clicking this button opens a dialog box or task pane that provides more options about the group.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),

        ]));
  }
}
