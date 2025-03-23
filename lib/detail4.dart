import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:msoffice/basics.dart';

void main() {
  runApp(const Exp2());
}

class Exp2 extends StatelessWidget {
  const Exp2({super.key});

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
  List<String> str4=["Normal Layout view− This displays page in normal view with the slide on the right and a list of thumbnails to the left. This view allows you to edit individual slides and also rearrange them."];
  List<String> str5=["Slide Sorter view− This displays all the slides as a matrix. This view only allows you to rearrange the slides but not edit the contents of each slide."];
  List<String> str6=["Reading View− This view is like a slideshow with access to the Windows task bar in case you need to switch windows. However, like the slideshow you cannot edit anything in this view."];
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
        body:ListView(children: [Text("Explore Windows",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("The following screenshot shows the various areas in a standard PowerPoint file. It is important to familiarize yourself with these areas as it makes learning and using PowerPoint easier.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/power.png"))),),
          Text("File Tab",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("This tab opens the Backstage view which basically allows you to manage the file and settings in PowerPoint. You can save presentations, open existing ones and create new presentations based on blank or predefined templates. The other file related operations can also be executed from this view.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Text("Ribbon",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/ribbonppt.png")))),
          Text("The ribbon contains three components −",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str2,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str3,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Text("Title Bar",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("This is the top section of the window. It shows the name of the file followed by the name of the program which in this case is Microsoft PowerPoint."),
              Text("If your document is new and it was never saved so far, then with either of the three options, Word will display a dialogue box to let you select a folder, and enter the document name as explained in case of saving new document.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Slide Area",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("This is the area where the actual slide is created and edited. You can add, edit and delete text, images, shapes and multimedia in this section.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
           Text("Help",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("The Help Icon can be used to get PowerPoint related help anytime you need. Clicking on the" "?" "opens the PowerPoint Help window where you have a list of common topics to browse from. You can also search for specific topics from the search bar at the top.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/help.png")))),
          Text("Zoom Options",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("The zoom control lets you zoom in for a closer look at your text. The zoom control consists of a slider that you can slide left or right to zoom in or out, you can click on the - and + buttons to increase or decrease the zoom factor. The maximum zoom supported by PowerPoint is 400% and the 100% is indicated by the mark in the middle.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Text("Slide Views",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("The group of four buttons located to the left of the Zoom control, near the bottom of the screen, lets you switch between PowerPoint views.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str4,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str5,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str6,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Text("Notes Section",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("This sections allows you to add notes for the presentation. These notes will not be displayed on the screen during the presentation; these are just quick reference for the presenter.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Text("Quick Access Toolbar",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("The Quick Access Toolbar is located just under the ribbon. This toolbar offers a convenient place to group the most commonly used commands in PowerPoint. You can customize this toolbar to suit your needs.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Text("Slide Tab",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("This section is available only in the Normal view. It displays all the slides in sequence. You can add, delete and reorder slides from this section.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
        ]));
  }
}
