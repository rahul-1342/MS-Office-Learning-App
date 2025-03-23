import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:msoffice/msoutlook.dart';

void main() {
  runApp(const AESM());
}

class AESM extends StatelessWidget {
  const AESM ({super.key});

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
  List<String> str=["In the E-mail account list, choose an email account to associate with the signature."];
  List<String> str2=["In the New messages list, choose the signature that you want to be added automatically to all new email messages. If you don't want to auto sign your email messages, you can ignore this option as (none) is the default value."];
  List<String> str3=["In the Replies/forwards list, choose the signature that you want to be added automatically (auto sign) when you reply to or forward messages. Otherwise, accept the default option of (none)."];
  List<String> str4=["In a new message, choose Signature, and then choose the signature that you want."];


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
        body:ListView(children: [Text("Add an email signature to messages",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("Create personalized signatures that appear at the bottom of your messages. Signatures can include text, images, your Electronic Business Card, a logo, or even an image of your handwritten signature.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Create a signature",style: TextStyle(fontSize:35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("1. In a new message, choose Signature >Signatures.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/signatureol.png"))),),
          Text("2. On the Email Signature tab, choose New.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("3. Type a name and then choose OK.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("4. Under Choose default signature, do the following:",style: TextStyle(fontSize:25),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.square,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str2,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.square,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str3,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.square,color: Colors.black,),),],),),
          Text("5. Under Edit signature, type the signature, and then choose OK.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Add a signature",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str4,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.square,color: Colors.black,),),],),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/signol.png"))),),

        ]));
  }
}
