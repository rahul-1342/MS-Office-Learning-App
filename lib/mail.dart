import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:msoffice/msoutlook.dart';

void main() {
  runApp(const ML());
}

class ML extends StatelessWidget {
  const ML ({super.key});

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
  List<String> str=["To change the number of buttons or icons that appear on the bar, increase or decrease the default setting of 4 for Maximum number of visible items."];
  List<String> str2=["To view icons instead of names, select the Compact Navigation check box."];
  List<String> str3=["To rearrange how buttons or icons are listed, select an item in the Display in this order box, and then choose Move Up or Move Down."];


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
                onPressed:(){Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>MSO()));}
            )),
        body:ListView(children: [Text("Mail",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("Email connects you to people inside and outside your organization. You can add an electronic signature and attachments to your email messages.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Create a new email message",style: TextStyle(fontSize:35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("1. From any mail folder (such as your Inbox), choose New Email.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/mailol.png"))),),
          Text("Keyboard shortcut:"
            "To create an email message, press Ctrl+Shift+M.",style: TextStyle(fontSize:25),),
          Text("2. When you’re done composing your email, choose Send.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),

        ]));
  }
}
