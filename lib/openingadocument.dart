import 'package:flutter/material.dart';
import 'package:msoffice/mswordbasic.dart';

void main() {
  runApp(const OD());
}

class OD extends StatelessWidget {
  const OD({super.key});

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
                onPressed:(){Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>MWB()));}
            )),
        body:ListView(children: [Text("Opening New Document ",style: TextStyle(fontSize: 33,color: Colors.blueAccent),),
          SizedBox(height: 10,),
        Text("In this chapter,we will discuss how to open a document in Word 2019.A new, blank document always opens when you start Microsoft Word. Suppose you want to start another new document while you are working on another document, or you closed an already opened document and want to start a new document. Here are the steps to open a new document −Step 1 − Click the File tab and select the New option.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25)),
        Container(width: 300,
          height: 300,margin: EdgeInsets.all(15),
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/new.png"))),),
        Text("Step 2 − When you select the New option from the first column, it will display a list of templates in the second column. Double-click on the Blank document; this is the first option in the template list. We will discuss the other templates available in the list in the following chapters.You should have your blank document as shown below. The document is now ready for you to start typing your text.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25)),
          SizedBox(height: 10,),
        Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/text.png")))),
        Text("You can use a shortcut to open a blank document anytime. Try using the Ctrl + N keys and you will see a new blank document similar to the one in the above screenshot.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          SizedBox(height: 10,),
        Text("Opening Existing Document",style: TextStyle(fontSize: 33,color: Colors.blueAccent),),
          SizedBox(height: 10,),
        Text("There may be a situation when you open an existing document and edit it partially or completely. Follow the steps given below to open an existing document −Step 1− Click the File tab and select the Open option.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25)),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/column.png")))),
          Text("Step 2 − This will display the following file Open dialog box. This lets you navigate through different folders and files, and also lets you select a file which you want to open.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25)),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/open.png")))),
          Text("Step 3 − Finally, locate and select a file which you want to open and click the small triangle available on the Open button to open the file. You will have different options to open the file, but simply use the Open option.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/open2.png")))),
          Text("This will open your selected file. You can use the Open Read-Only option if you are willing just to read the file and you have no intention to modify, i.e., edit the file. Other options can be used for advanced usage.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25))
        ]));
  }
}
