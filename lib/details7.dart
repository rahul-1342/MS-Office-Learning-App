import 'package:flutter/material.dart';
import 'package:msoffice/basics.dart';

void main() {
  runApp(const AS());
}

class AS extends StatelessWidget {
  const AS({super.key});

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
        body:ListView(children: [Text("Add New Slides",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("In this chapter, we will understand how to add new slides in an existing presentation. Here are the steps that allow you to insert a new slide in the deck −"
              "Step 1 − Right-click in the Navigation Pane  under any existing slide and click on the New Slide option.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/navigation.png"))),),
          Text("Step 2 − The new slide is inserted. You can now change the layout of this slide to suit your design requirements.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/newslide.png")))),
          Text("Step 3 − To change the slide layout, right-click on the newly inserted slide and go to the Layout option where you can choose from the existing layout styles available to you.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/layout.png")))),
          Text("You can follow the same steps to insert a new slide in between existing slides or at the end on the slide list.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("When we insert a new slide, it inherits the layout of its previous slide with one exception. If you are inserting a new slide after the first slide (Title slide), the subsequent slide will have the Title and Content layout.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("You will also notice that if you right-click in the first step without selecting any slide the menu options you get are different, although you can insert a new slide from this menu too.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/slide.png"))))],


        ));
  }
}
