import 'package:flutter/material.dart';
import 'package:msoffice/basics.dart';
import 'package:msoffice/mspowerpoint.dart';

void main() {
  runApp(const ASN());
}

class ASN extends StatelessWidget {
  const ASN({super.key});

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
        body:ListView(children: [Text("Adding Slide Notes",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("Slide notes can be very useful tools for presentation. These notes are not displayed on the screen in the Slideshow mode, but the presenter can see them so they can prepare well to present the slides. Depending on your Print settings, you can also print the slide notes along with the slides.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("This chapter will show you how to add slide notes to an existing presentation.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Step 1− To locate the slide notes, set the view in Normal mode.w",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/normalppt.png"))),),
          Text("Step 2− The Slide Notes section is indicated by" "Click to add notes",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/slidenote.png"))),),
          Text("Step 3 − You can click on the top border and drag the section to increase its size to make it easier to type.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/slidenote2.png"))),),
          Text("Step 4 − Type your text in this section as slide notes.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/slidenote3.png"))),),
          Text("You can only use bullets, numbering and alignment functions in the Slide Notes section. All other functions can be selected, but can be applied only to the selected slide, not the notes.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Text("Slide notes can be printed from the print menu under the Backstage view. From the Print Layout option, select Notes Pages or 3 Slides. Notes Pages will print a single slide with the slide notes below it. The 3 Slides will print all three slides with notes on the right side.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
            Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/printppt.png"))),),

        ]));
  }
}
