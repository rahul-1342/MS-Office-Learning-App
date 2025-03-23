import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:msoffice/msaccess.dart';


void main() {
  runApp(const FM());
}

class FM extends StatelessWidget {
  const FM({super.key});

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
  List<String> str=["A form is a database object that you can use to create a user interface for a database application."];
  List<String> str2=["It mainly used to ease the process of data entry or editing."];
  List<String> str3=["Data in a form can be selected from one or more tables."];
  List<String> str4=["Forms can also be used to control access to data, like which fields or rows of data are visible to which users."];
  List<String> str5=["Forms have a Form View."];
  List<String> str6=["Help you to display live data with easy creation of new data."];
  List<String> str7=["By default, populate all the column from the selected table in ‘form view,’"];
  List<String> str8=["The user can delete non-required column manually"];
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
        body:ListView(children: [Text("Forms",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str2,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str3,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str4,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str5,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str6,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Text("To understand form lets first create two new Record in Contact Table (from the prebuilt Contact Database discussed here)",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Step 1) Select the ‘Contact’ table from Left Navigation.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Step 2) Create two rows by entering some relevant data in two rows.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/contactacc.png")))),
          Text("create Form, and then we will see how forms can be leverage for easy display, editing, and creation of new data.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Create using Form",style: TextStyle(fontSize:35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("It is the simplest way to create the form which will:",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str7,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str8,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Text("Step 1) Select the table for which we want to create the form and click on ‘Form.’",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/formsacc.png")))),
          Text("Step 2) Below window will appear.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/contact1ac.png")))),
          Text("Step 3) Right-click on any cell which we don’t want to be part of final forms and click on ‘Delete.’",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/deletefaxacc.png")))),
          Text("Step 4) Press ‘Ctrl+S’ and enter new Form Name as ‘Contact_Form2’. Click ‘OK’.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/saveasformacc.png")))),
                ] ));
  }
}
