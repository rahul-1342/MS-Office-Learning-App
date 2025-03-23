import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:msoffice/basics.dart';

void main() {
  runApp(const CP());
}

class CP extends StatelessWidget {
  const CP({super.key});

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
    onPressed:(){Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>Bas()));}
    )),
    body:ListView(children: [Text("Create Presentation",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
      SizedBox(height: 10,),
    Text("PowerPoint offers a host of tools that will aid you in creating a presentation. These tools are organized logically into various ribbons in PowerPoint. The table below describes the various commands you can access from the different menus.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
    Container(width: 300,
    height: 300,margin: EdgeInsets.all(15),
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/power.png"))),),
      Column(
          children:<Widget>[

    Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    Table(
      children:  [
        TableRow(children: [
          Text("Menu Category", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Text("Ribbon Commands", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

        ]),
        TableRow(children: [
            Text("Home", style: TextStyle(fontSize: 20),),
          Container(child: Column(children: [Text("Clipboard functions, manipulating slides, fonts, paragraph settings, drawing objects and editing functions.", style: TextStyle(fontSize: 15.0),)])),


        ]),
        TableRow(children: [
          Text("Insert", style: TextStyle(fontSize: 20),),
          Container(child: Column(children: [Text("Insert tables, pictures, images, shapes, charts, special texts, multimedia and symbols.", style: TextStyle(fontSize: 15.0),),],),)

        ]),
        TableRow(children: [
          Text("Design", style: TextStyle(fontSize: 20),),
          Container(child: Column(children: [Text("Slide setup, slide orientation, presentation themes and background.", style: TextStyle(fontSize: 15.0),),],),)

        ]),
        TableRow(children: [
          Text("Transitions", style: TextStyle(fontSize: 20),),
          Container(child: Column(children: [Text("Commands related to slide transitions.", style: TextStyle(fontSize: 15.0),),],),)

        ]),
        TableRow(children: [
          Text("Animations", style: TextStyle(fontSize: 20),),
          Container(child: Column(children: [Text("Commands related to animation within the individual slides.", style: TextStyle(fontSize: 15.0),),],),)

        ]),
        TableRow(children: [
          Text("Slide Show", style: TextStyle(fontSize: 20),),
          Container(child: Column(children: [Text("Commands related to slideshow set up and previews.", style: TextStyle(fontSize: 15.0),)],),)

        ]),
        TableRow(children: [
          Text("Review", style: TextStyle(fontSize: 20),),
          Container(child: Column(children: [Text("Proofing content, language selection, comments and comparing presentations.", style: TextStyle(fontSize: 15.0),),],),)

        ]),
        TableRow(children: [
          Text("View", style: TextStyle(fontSize: 20),),
          Container(child: Column(children: [Text("Commands related to presentation views, Master slides, color settings and window arrangements.", style: TextStyle(fontSize: 15.0),),],),)
        ]),]),),]),
      Text("Besides these depending on the objects selected in the slide, there are other menu tabs that get enabled.",textAlign:TextAlign.justify, style: TextStyle(fontSize:25))
    ]
    ));
  }
}