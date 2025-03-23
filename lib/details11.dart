import 'package:flutter/material.dart';
import 'package:msoffice/basics.dart';
import 'package:msoffice/mspowerpoint.dart';

void main() {
  runApp(const RS());
}

class RS extends StatelessWidget {
  const RS({super.key});

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
        body:ListView(children: [Text("Rearranging Slides",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("Rearranging slides is important when it comes to organizing the overall presentation flow. While it is vital that you get the right content in every slide, it is equally important that you are able to present them in a format that makes it easier for the audience to understand the content too; most times this will require rearranging the slides.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("You can rearrange slides from two views in PowerPoint - Normal View and Slide Sorter View. Given below are the steps to rearrange slides from different views.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Normal View",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("Step 1 − Select the slide to be moved.the Normal view.",style: TextStyle(fontSize:27),),
          Text("Step 2− Left click on the slide and drag it to the position in the sequence where you want to place it. PowerPoint will indicate the insert position with a line in-between existing slides.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/positionppt.png"))),),
          Text(" Step 3− When you get to the right position release the left click button to insert the slide. Alternately you can also cut the selected slide and paste it back in the sequence as shown below..",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/cutppt.png"))),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/pasteppt.png"))),),
          Text("Slide Sorter View",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("Let us now understand how the Slide Sorter View works.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Text("Step 1 − Select the slide to be moved.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Text("Step 2− Left click on the slide and drag it to the position in the sequence where you want to place it. PowerPoint will indicate the insert position with a line in-between existing slides.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/positionppt2.png"))),),
          Text(" Step 3− When you get to the right position release the left click button to insert the slide. Alternately you can also cut the selected slide and paste it back in the sequence as shown below..",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/cutppt2.png"))),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/pasteppt2.png"))),),

        ]));
  }
}
