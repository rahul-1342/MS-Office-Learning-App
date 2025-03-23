import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:msoffice/msaccess.dart';


void main() {
  runApp(const HCT());
}

class HCT extends StatelessWidget {
  const HCT({super.key});

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
  List<String> str=["‘Name’ – This is the actual name of the column."];
  List<String> str2=["Caption’ – This is the user view name of the column."];
  List<String> str3=["Description’ – This is the short description of the column name."];


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
                onPressed:(){Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>MSA()));}
            )),
        body:ListView(children: [Text("How to Create Table",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("The first step in this Microsoft Access tutorial to store data in the database is creating a Table where data will reside. Post creation of the table, we can keep inserting the rows in the table.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
            Text("There are two ways to create Database in MS Access""1)Create a Table from Design View""2)Create a Table from Datasheet View",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/tableaccess.png")))),
          Text("Step 2) System will display the default table created with ‘Table1’ name.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/table1access.png")))),
          Text("Step 3) To Rename Column, double click on Column Header and enter the new column Name.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/courseaccess.png")))),
          Text("Step 4) You can Add Column by clicking on any category from the ‘Add & Delete’ group. Alternatively, you can also add a column by clicking on ‘Click to Add’"

             " For Example, click on ‘Short Text’ from the ‘Add & Delete’ group.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/shortextacc.png")))),
          Text("Step 5) Column will be added with the default name as ‘Field1.’new column Name.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/textfeildacces.png")))),
          Text("Step 6) Click on Header and rename as ‘COURSE_NAME.’",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/coursename.png")))),
          Text("Step 7) Press ‘Ctrl + S’ and Enter the new table name to save the table.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/saveasaccess.png")))),
          Text("Step 8) You can also save new Name, Caption and Short description for any Column by clicking on ‘Name and Caption.’ Click on it",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/nameandcapacc.png")))),
          Text("Step 9) Dialog Box will appear. Add the following and Click on ‘OK’",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str2,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str3,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
               decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/fieldproacc.png")))),
          Text("Create Table – Design View",style: TextStyle(fontSize: 33,color: Colors.blueAccent),),
          Divider(height: 20.5,thickness: 1.5,),
          Text("Step 1) First Click Create tab. Then from Tables group, click Table.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/tabledesignacc.png")))),
          Text("Step 2) Table Dialog box appears. For each Field enter Filed Name, Data Type and Description.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/tabledesaccess.png")))),
          Text("Steps 3) To Add Course_ID as Primary Key, select it and Click on ‘Primary Key.’ Course_Id will be Preceded by KEY ICON as shown below:",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/primarykeyacc.png")))),
          Text("Steps 4) Press ‘Ctrl+S.’ Enter the Table Name and Click OK",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/coursestracc.png")))),
          Text("How to Switch views between Datasheet and Design",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("Now in this MS Access tutorial, we will learn how to switch views between Datasheet and Design:"
              "To switch views, between the datasheet (spreadsheet view) and the design view, click the ‘View’ button in the top-left hand corner of the Access Ribbon (shown in the Home/Help/Design Tabs). And Click on the View you need to display."
              "For Example: Let’s Assume You want to switch to the newly created table ‘Course_strength’ from ‘Design view’ to ‘Data Sheet’ View.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
        Text("Step 1) Click on Datasheet View",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
        Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/datasheetviewacc.png")))),

    ],
        ));
  }
}
