import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:msoffice/basics.dart';



void main() {
  runApp(const BSVP());
}

class BSVP extends StatelessWidget {
  const BSVP({super.key});

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
      home: BulletListPage(),
    );
  }
}

class BulletListPage extends StatefulWidget {
  @override
  _BulletListPageState createState() =>_BulletListPageState();
}

class _BulletListPageState extends State<BulletListPage> {
  List<String> str=["First Pane − This is the commands pane which consists of all the commands you would typically find in the file menu of older versions. You also have the Options menu which lets you edit the options on the program like customizing the ribbon."];
  List<String> str2=["Second Pane − This is the subcommands pane. This will list all the commands related to the main command you choose in the first pane. For example, if you select Print in the first pane, you get to choose the printer and adjust the print settings in the second pane."];
  List<String> str3=["Third Pane − This is the preview or file information page. Depending on the command and the subcommand you select, this pane will either display the properties of the file or give you a preview of the file."];


  @override

  Widget build(BuildContext context) {

    // Material App

    return MaterialApp(
      debugShowCheckedModeBanner: false,


      // Scaffold Widget

        home: Scaffold(

            appBar: AppBar(

              // AppBar takes a Text Widget

              // in it's title parameter

                title: const Text('Details'),
                leading: IconButton(icon: Icon(Icons.arrow_back),
                    tooltip: 'arrow back',
                    onPressed: () {Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>Bas()));}
                )),

            body:ListView(children: [Text("Backstage View",style: TextStyle(fontSize:35 ,color: Colors.blueAccent),),
              SizedBox(height: 10,),
              Text("In Office 2019, Microsoft replaced the traditional file menu with the new Backstage view. This view not only offers all the menu items under the file menu, but additional details which makes management of your files a lot easier.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
              Text("Accessing Backstage View",style: TextStyle(fontSize:35,color: Colors.blueAccent),),
              SizedBox(height: 10,),
              Text("You can access the Backstage view simply by clicking on the File tab. You can exit this view by clicking on any tab (including the File tab again). You can also press the 'Esc' button on the keyboard.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
              Container(width: 300,
                  height: 300,margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/infoppt.png")))),
              Text("Organization of Backstage View",style: TextStyle(fontSize:35 ,color: Colors.blueAccent),),
              SizedBox(height: 10,),
              Text("The backstage view has three sections or panes.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25)),
              Container(width: 300,
                  height: 300,margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/infoppt.png")))),
              Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
              Text("Various commands under the first pane are described in the table below −",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
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
                    Text("Sr.No", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Text("Command & Description", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),


                  ]), TableRow(children: [
                    Text("1", style: TextStyle(fontSize: 15.0),),
                    Container(child: Column(children: [Text("Save", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                      Text("This allows you to save a new file or an existing file in standard format. If you are working on a previously saved file this will save the new changes in the same file format. If you are working on a new file, this command would be similar to the Save As command.", style: TextStyle(fontSize: 15.0),),],),)

                  ]),
                  TableRow(children: [
                    Text("2", style: TextStyle(fontSize: 15.0),),
                    Container(child: Column(children: [Text("Save As", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                      Text("Allows you to specify the file name and the file type before saving the file.", style: TextStyle(fontSize: 15.0),),],),)

                  ]),
                  TableRow(children: [
                    Text("3", style: TextStyle(fontSize: 15.0),),
                    Container(child: Column(children: [Text("Open", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                      Text("Allows you to open new PowerPoint files.", style: TextStyle(fontSize: 15.0),),],),)

                  ]),
                  TableRow(children: [
                    Text("4", style: TextStyle(fontSize: 15.0),),
                    Container(child: Column(children: [Text("Close", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                      Text("Allows you to close an existing file.", style: TextStyle(fontSize: 15.0),),],),)

                  ]),
                  TableRow(children: [
                    Text("5", style: TextStyle(fontSize: 15.0),),
                    Container(child: Column(children: [Text("Info", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                      Text("Displays the information about the current file.", style: TextStyle(fontSize: 15.0),),],),)

                  ],),
                  TableRow(children: [
                    Text("6", style: TextStyle(fontSize: 15.0),),
                    Container(child: Column(children: [Text("Recent", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                      Text(" Lists series of recently viewed or edited PowerPoint files.", style: TextStyle(fontSize: 15.0),),],),)
                  ]),
                  TableRow(children: [
                    Text("7", style: TextStyle(fontSize: 15.0),),
                    Container(child: Column(children: [Text("New", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                      Text("Allows you to create a new file using blank or pre-defined templates.", style: TextStyle(fontSize: 15.0),),],),)
                  ]),
                  TableRow(children: [
                    Text("8", style: TextStyle(fontSize: 15.0),),
                    Container(child: Column(children: [Text("Print", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                      Text("Allows you to select the printer settings and print the presentation.", style: TextStyle(fontSize: 15.0),),],),)

                  ]),
                  TableRow(children: [
                    Text("9", style: TextStyle(fontSize: 15.0),),
                    Container(child: Column(children: [Text("Save & Send", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                      Text("Allows you to share your presentation with larger audience via emails, web, cloud services, etc.", style: TextStyle(fontSize: 15.0),),],),)
                  ]),
                  TableRow(children: [
                    Text("10", style: TextStyle(fontSize: 15.0),),
                    Container(child: Column(children: [Text("Help", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                      Text("Provides access to PowerPoint Help.", style: TextStyle(fontSize: 15.0),),],),)
                  ]),
                  TableRow(children: [
                    Text("11", style: TextStyle(fontSize: 15.0),),
                    Container(child: Column(children: [Text("Options", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                      Text("Allows you to set various options related to PowerPoint program.", style: TextStyle(fontSize: 15.0),),],),)
                  ]),
                  TableRow(children: [
                    Text("12", style: TextStyle(fontSize: 15.0),),
                    Container(child: Column(children: [Text("Exit", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                      Text("Closes the presentation and exits the program.", style: TextStyle(fontSize: 15.0),),],),)
                  ]),
                ]),),
           ]),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str2,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
          Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str3,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
              ])));

  }
}