import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:msoffice/mswordbasic.dart';

void main() {
  runApp(const MA());
}

class MA extends StatelessWidget {
  const MA({super.key});

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
  List<String> str=["Move upward by one line by clicking the upward-pointing scroll arrow."];
  List<String> str2=["Move downward by one line by clicking the downward-pointing scroll arrow."];
  List<String> str3=["Move one next page, using the next page button (footnote)."];
  List<String> str4=["Move one previous page, using the previous page button (footnote)."];
  List<String> str5=["Use theBrowse Object button to move through the document, going from one chosen object to the next."];
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
        body:ListView(children: [Text("Move Around",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("In this chapter, we will discuss how to move around in Word 2019. Word provides a number of ways to move around a document using the mouse and the keyboard.To begin with, let us create some sample text. To create a sample text, there is a short cut available. Open a new document and type =rand() and press Enter. Word will create the following content for you −",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25), ),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/explore.png"))),),
          Text("Moving with Mouse ",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("You can easily move the insertion point by clicking in your text anywhere on the screen. There may be instances when a document is big and you cannot see a place where you want to move. Here, you will have to use the scroll bars, as shown in the following screenshot − ",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          SizedBox(height: 10,),
          Container(width: 300,
              height: 300,margin: EdgeInsets.all(15),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/ribbon.png")))),
          Text("You can scroll through your document by rolling your mouse wheel, which is equivalent to clicking the up-arrow or down-arrow buttons in the scroll bar.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25)),
          SizedBox(height: 10,),
          Text("Moving with Scroll Bars",style: TextStyle(fontSize: 33,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("As shown in the above screenshot, there are two scroll bars: one for moving vertically within the document, and one for moving horizontally. Using the vertical scroll bar, you may −",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25)),
              Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
               Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str2,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str3,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str4,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str5,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Text("Moving with Keyboard",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("The following keyboard commands, used for moving around your document, also move the insertion point −",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25)),
              Column(
              children:<Widget>[
              Padding(
              padding: const EdgeInsets.all(8.0),

    ),
    Container(
   width: 400,
    child:
    Table(
      children:  [
        TableRow(children: [
          Text("Keystroke", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          Text("Where the Insertion Point Moves", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

        ]),
        TableRow(children: [
          Align(child: Image.asset("img/arrowright.png",width: 100,height: 20,),alignment: Alignment.centerLeft,),
         Container(child: Column(children: [Text("Forward one character", style: TextStyle(fontSize:18),),

        ]),)]),
       TableRow(children: [
          Align(child: Image.asset("img/leftarrow.png",width: 100,height: 20,),alignment: Alignment.centerLeft,),
          Container(child: Column(children: [Text("Back one character", style: TextStyle(fontSize:18),),

        ]),)]),
        TableRow(children: [
          Align(child: Image.asset("img/top.png",width: 100,height: 20,),alignment: Alignment.centerLeft,),
          Container(child: Column(children: [Text("Up one liner", style: TextStyle(fontSize:18),),

        ]),)]),

        TableRow(children: [
          Align(child: Image.asset("img/arrowdown.png",width: 100,height: 20,),alignment: Alignment.centerLeft,),
          Container(child: Column(children: [Text("Down one line", style: TextStyle(fontSize:18),),

        ]),)]),

        TableRow(children: [
        Text("PageUp", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
          Container(child: Column(children: [Text("To the previous screen", style: TextStyle(fontSize:18),),

        ]),)]),
        TableRow(children: [
          Text("PageDown", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
          Container(child: Column(children: [Text("To the next screen", style: TextStyle(fontSize:18),),

        ]),)]),

       TableRow(children: [
       Text(" Home", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
       Container(child: Column(children: [Text("To the beginning of the current line", style: TextStyle(fontSize:18),),

       ]),)]),

       TableRow(children: [
       Text("End", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
       Container(child: Column(children: [Text("To the end of the current line", style: TextStyle(fontSize:18),),

       ]),)])]))]),
        SizedBox(height: 10,),
          Container(child: Text("You can move word by word or paragraph by paragraph. You would have to hold down the Ctrl key while pressing an arrow key, which moves the insertion point as described here −",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),),
                SizedBox(height: 10,),
                Table(
                  children:  [
                    TableRow(children: [
                      Text("Key Combination", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Text("Where the Insertion Point Moves", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                    ]),
                    TableRow(children: [
                      Align(child: Image.asset("img/arrowright.png",width: 100,height: 20,),alignment: Alignment.centerLeft,),
                      Text("To the next word", style: TextStyle(fontSize: 15.0),),

                    ]),
                    TableRow(children: [
                      Align(child: Image.asset("img/leftarrow.png",width: 100,height: 20,),alignment: Alignment.centerLeft,),
                      Text("To the previous word", style: TextStyle(fontSize: 15.0),),

                    ]),
                    TableRow(children: [
                      Align(child: Image.asset("img/top.png",width: 100,height: 20,),alignment: Alignment.centerLeft,),
                      Text("To the start of the previous paragraph", style: TextStyle(fontSize: 15.0),),

                    ]),
                    TableRow(children: [
                      Align(child: Image.asset("img/arrowdown.png",width: 100,height: 20,),alignment: Alignment.centerLeft,),
                      Text("To the start of the next paragraph", style: TextStyle(fontSize: 15.0),),

                    ]),
                    TableRow(children: [
                      Text("Ctrl + PageUp", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                      Text("To the previous browse object", style: TextStyle(fontSize: 15.0),),

                    ]),
                    TableRow(children: [
                      Text("Ctrl + PageDown", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                      Text("To the next browse object", style: TextStyle(fontSize: 15.0),),

                    ]),
                    TableRow(children: [
                      Text("Ctrl + Home", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                      Text("To the beginning of the document", style: TextStyle(fontSize: 15.0),),

                    ]),
                    TableRow(children: [
                      Text(" Ctrl + End", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                      Text("To the end of the document", style: TextStyle(fontSize: 15.0),),

                    ]),
                    TableRow(children: [
                      Text("Shift + F5", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                      Text("To the last place you changed in your document.", style: TextStyle(fontSize: 15.0),),

                    ])
                  ],
                ),
      Text("Moving With Go To Command",style: TextStyle(fontSize: 33,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("Press the F5 key to use theGo To command. This will display a dialogue box where you will have various options to reach to a particular page.Normally, we use the page number, the line number or the section number to go directly to a particular page and finally press the Go To button.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
      Container(width: 300,
      height: 300,margin: EdgeInsets.all(15),
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/find.png"))))]));


  }
}
