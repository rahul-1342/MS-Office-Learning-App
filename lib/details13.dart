import 'package:flutter/material.dart';
import 'package:msoffice/basics.dart';
import 'package:msoffice/mspowerpoint.dart';

void main() {
  runApp(const MS());
}

class MS extends StatelessWidget {
  const MS({super.key});

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
        body:ListView(children: [Text("Managing Sections",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("Given the popularity of PowerPoint and its versatility, there are situations when you are dealing with very large slide decks or just collaborating with different people to build the slides. In such cases, it is always helpful to be able to segregate the slides into smaller groups and work with these groups. PowerPoint 2010 introduces the concept of sections to achieve this. Here are the main functions you can execute with sections.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Text("Creating Sections",style: TextStyle(fontSize:35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("The steps to create a new section are as follows. You can execute these steps from the Normal view or the Slide Sorter view",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Text("Step 1 − In the Normal view or the Slide Sorter view, right-click at the position where you want to add the section and select add section.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/addsectionppt.png"))),),
           Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/addsec2ppt.png"))),),
          Text("Step 2 − The new section gets added to the presentation with all the subsequent slides being included in this section.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/unsecppt.png"))),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/unitiledsecppt.png"))),),
          Text("Step 3− By default, the new section is named" "Untitled Section" "but you can change the section name. Right-click on the section and select" "Rename Section.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/remsecppt.png"))),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/remsec2ppt.png"))),),
          Text("Step 4 − In the Rename Section dialog box, enter the new section name. This accepts all the characters including alphabets, numbers, special characters, punctuations, etc.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/renamesecppt.png"))),),
          Text("Step 5 − Click on the" "Rename" "button on the dialog to rename the section.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/renamesec2ppt.png"))),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/renamesec3ppt.png"))),),
          Text("Rearranging Sections",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("One of the advantages of sections is that you can not only group slides together, but also rearrange them as one set. Instead of having to move each slide individually, you can move the entire section. Just like rearranging slides you can drag and move the sections. Alternately, you can right-click on the section and move it up or down as shown below.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/reamesec.png"))),),
          Text("If there are many slides to work with, you can collapse them so you view just the sections. This makes rearranging them less confusing too.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/collapseppt.png"))),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/collapse2ppt.png"))),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/collapse3.ppt.png"))),),
          Text("Deleting Sections",style: TextStyle(fontSize: 35,color: Colors.blueAccent),),
          SizedBox(height: 10,),
          Text("PowerPoint 2019 provides three options to delete sections. The table below explains the function of each option.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 25),),
          Container(width: 300,
            height: 300,margin: EdgeInsets.all(15),
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/deleteoptionppt.png"))),),
      Column(
          children:<Widget>[

            Padding(
    padding: const EdgeInsets.all(8.0),
    child: Table(

    // textDirection: TextDirection.rtl,
    // defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
    // border:TableBorder.all(width: 2.0,color: Colors.red),
    children: [
    TableRow(
    children: [
    Text("Sr.No", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
    Text("Delete Option & Description", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
    ]),
      TableRow(children: [
        Text("1", style: TextStyle(fontSize: 15.0),),
        Container(child: Column(children: [Text("Remove Section", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
          Text("Deletes the selected section and merges slides with the previous section.", style: TextStyle(fontSize: 15.0),),],),)

      ]),
      TableRow(children: [
        Text("2", style: TextStyle(fontSize: 15.0),),
        Container(child: Column(children: [Text("Remove Section & Slide", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          Text( "Deletes the selected section and all the slides in the section.", style: TextStyle(fontSize: 15.0),),],),)
      ]),
      TableRow(children: [
        Text("3", style: TextStyle(fontSize: 15.0),),
        Container(child: Column(children: [Text("Remove All Section", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          Text("Deletes all the sections and merges all the slides into a presentation without sections.", style: TextStyle(fontSize: 15.0),),],),)

      ]),


    ]))])]));
  }
}
