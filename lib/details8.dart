import 'package:flutter/material.dart';
import 'package:msoffice/basics.dart';

void main() {
  runApp(const ATB());
}

class ATB extends StatelessWidget {
  const ATB({super.key});

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
        body:ListView(children: [Text("Adding Text in Boxes",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("PowerPoint allows users to add text to the slide in a well-defined manner to ensure the content is well distributed and easy to read. The procedure to add the text in a PowerPoint slide is always the same - just click in the text box and start typing. The text will follow the default formatting set for the text box, although this formatting can be changed later as required. What changes is the different kinds of content boxes that support text in a PowerPoint slide.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Given below are some of the most common content blocks you will see in PowerPoint",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Title Box",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("This is typically found on slides with the title layout and in all the slides that have a title box in them. This box is indicated by" "Click to add title.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/titlebox.png"))),),
          Text("Subtitle Box",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("This is found only in slides with the Title layout. This is indicated by" "Click to add subtitle",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Content Box",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("This is found in most of the slides that have a placeholder for adding content. This is indicated by" "Click to add text""As you can see, this box allows you to add text as well as non-text content. To add text to such a box, click anywhere on the box, except on one of the content icons in the center and start typing.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/titlebox.png")))),
          Text("Step 3 − To change the slide layout, right-click on the newly inserted slide and go to the Layout option where you can choose from the existing layout styles available to you.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/layout.png")))),
          Text("Text Only Box",style: TextStyle(fontSize:35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("This is not a default content box available in PowerPoint, but you can create it using Slide Master, if required. This is also indicated by" "Click to add text""The only difference between the Text Only Box and the Content Box is that the former only supports text in the content area.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
             Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/textbox.png"))))],


        ));
  }
}
