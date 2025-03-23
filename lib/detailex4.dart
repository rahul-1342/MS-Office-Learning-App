import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:msoffice/basic2.dart';

void main() {
  runApp(const SWE());
}

class SWE extends StatelessWidget {
  const SWE({super.key});

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
  List<String> str=["Just press Ctrl + S keys to save the changes."];
  List<String> str2=["Optionally, you can click on the floppy icon available at the top left corner and just above the File tab. This option will also save the changes."];
  List<String> str3=["You can also use third method to save the changes, which is the Saveoption available just above the Save As option as shown in the above screen capture."];


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
                onPressed:(){Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>Bas2()));}
            )),
        body:ListView(children: [Text("Save Workbook in Excel 2019",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("Saving New Sheet",style: TextStyle(fontSize:25),),
            Text("Once you are done with typing in your new excel sheet, it is time to save your sheet/workbook to avoid losing work you have done on an Excel sheet. Following are the steps to save an edited excel sheet −",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Step 1 − Click the File tab and select Save As option.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/infoex2.png"))),),
          Text("Step 2 − Select a folder where you would like to save the sheet, Enter file name, which you want to give to your sheet and Select a Save as type, by default it is .docx format.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/saveex.png"))),),
          Text("Step 3 − Finally, click on Save button and your sheet will be saved with the entered name in the selected folder.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          SizedBox(height: 10,),
          Text("Saving New Changes",style: TextStyle(fontSize:35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("There may be a situation when you open an existing sheet and edit it partially or completely, or even you would like to save the changes in between editing of the sheet. If you want to save this sheet with the same name, then you can use either of the following simple options −",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str2,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str3,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Text("If your sheet is new and it was never saved so far, then with either of the three options, word would display you a dialogue box to let you select a folder, and enter sheet name as explained in case of saving new sheet ",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),

        ]));
  }
}
