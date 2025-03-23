import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:msoffice/basic2.dart';



void main() {
  runApp(const BSVE());
}

class BSVE extends StatelessWidget {
  const BSVE({super.key});

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
  List<String> str=["Compatibility Mode − If the sheet is not a native excel 2007/2010 sheet, a Convert button appears here, enabling you to easily update its format. Otherwise, this category does not appear."];
  List<String> str2=["Permissions − You can use this option to protect the excel sheet. You can set a password so that nobody can open your sheet, or you can lock the sheet so that nobody can edit your sheet."];
  List<String> str3=["Prepare for Sharing− This section highlights important information you should know about your sheet before you send it to others, such as a record of the edits you made as you developed the sheet."];
  List<String> str4=["Versions− If the sheet has been saved several times, you may be able to access previous versions of it from this section."];

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
                    onPressed: () {Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>Bas2()));}
                )),

            body:ListView(children: [Text("BackStage View in Excel 2019",style: TextStyle(fontSize:35 ,color: Colors.blueAccent),),
              SizedBox(height: 10,),
              Text("The Backstage view has been introduced in Excel 2019 and acts as the central place for managing your sheets. The backstage view helps in creating new sheets, saving and opening sheets, printing and sharing sheets, and so on.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
              Text("Getting to the Backstage View is easy. Just click the File tab located in the upper-left corner of the Excel Ribbon. If you already do not have any opened sheet then you will see a window listing down all the recently opened sheets as follows −",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
              Container(width: 300,
                  height: 300,margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/recentex.png")))),

              Text("If you already have an opened sheet then it will display a window showing the details about the opened sheet as shown below. Backstage view shows three columns when you select most of the available options in the first column.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
              Container(width: 300,
                  height: 300,margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/infoex.png")))),
              Text("First column of the backstage view will have the following options −",textAlign:TextAlign.justify,style: TextStyle(fontSize:25 ),),
              SizedBox(height: 10,),
                  Column(
                  children:<Widget>[
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Table(

                          // textDirection: TextDirection.rtl,
                          // defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                          // border:TableBorder.all(width: 2.0,color: Colors.red),
                            children: [
                              TableRow(
                                  children: [
                                    Text("Sr.No", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    Text("Option & Description", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  ]
                              ),
                              TableRow(children: [
                                Text("1", style: TextStyle(fontSize: 15.0),),
                                Container(child: Column(children: [Text("Save", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                                  Text(" If an existing sheet is opened, it would be saved as is, otherwise it will display a dialogue box asking for the sheet name.", style: TextStyle(fontSize: 15.0),),],),)

                              ]),
                              TableRow(children: [
                                Text("2", style: TextStyle(fontSize: 15.0),),
                                Container(child: Column(children: [Text("Save As", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                                  Text(" A dialogue box will be displayed asking for sheet name and sheet type. By default, it will save in sheet 2010 format with extension .xlsx.", style: TextStyle(fontSize: 15.0),),],),)

                              ]),
                              TableRow(children: [
                                Text("3", style: TextStyle(fontSize: 15.0),),
                                Container(child: Column(children: [Text("Open", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                                  Text("This option is used to open an existing excel sheet.", style: TextStyle(fontSize: 15.0),),],),)

                              ]),
                              TableRow(children: [
                                Text("4", style: TextStyle(fontSize: 15.0),),
                                Container(child: Column(children: [Text("Close", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                                  Text("This option is used to close an opened sheet.", style: TextStyle(fontSize: 15.0),),],),)

                              ]),
                              TableRow(children: [
                                Text("5", style: TextStyle(fontSize: 15.0),),
                                Container(child: Column(children: [Text("Info", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                                  Text("This option displays the information about the opened sheet.", style: TextStyle(fontSize: 15.0),),],),)

                              ],),
                              TableRow(children: [
                                Text("6", style: TextStyle(fontSize: 15.0),),
                                Container(child: Column(children: [Text("Recent", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                                  Text(" This option lists down all the recently opened sheets.", style: TextStyle(fontSize: 15.0),),],),)
                              ]),
                              TableRow(children: [
                                Text("7", style: TextStyle(fontSize: 15.0),),
                                Container(child: Column(children: [Text("New", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                                  Text("This option is used to open a new sheet.", style: TextStyle(fontSize: 15.0),),],),)
                              ]),
                              TableRow(children: [
                                Text("8", style: TextStyle(fontSize: 15.0),),
                                Container(child: Column(children: [Text("Print", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                                  Text("This option is used to print an opened sheet.", style: TextStyle(fontSize: 15.0),),],),)

                              ]),
                              TableRow(children: [
                                Text("9", style: TextStyle(fontSize: 15.0),),
                                Container(child: Column(children: [Text("Save & Send", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                                  Text("This option saves an opened sheet and displays options to send the sheet using email etc.", style: TextStyle(fontSize: 15.0),),],),)
                              ]),
                              TableRow(children: [
                                Text("10", style: TextStyle(fontSize: 15.0),),
                                Container(child: Column(children: [Text("Help", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                                  Text("You can use this option to get the required help about excel 2019.", style: TextStyle(fontSize: 15.0),),],),)
                              ]),
                              TableRow(children: [
                                Text("11", style: TextStyle(fontSize: 15.0),),
                                Container(child: Column(children: [Text("Options", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                                  Text("Use this option to set various option related to excel 2019.", style: TextStyle(fontSize: 15.0),),],),)
                              ]),
                              TableRow(children: [
                                Text("12", style: TextStyle(fontSize: 15.0),),
                                Container(child: Column(children: [Text("Exit", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                                  Text("Use this option to close the sheet and exit.", style: TextStyle(fontSize: 15.0),),],),)
                              ]),]))]),
              Text("Sheet Information",style: TextStyle(fontSize:35 ,color: Colors.blueAccent),),
              SizedBox(height: 10,),
              Text("When you click Info option available in the first column, it displays the following information in the second column of the backstage view −",textAlign:TextAlign.justify,style: TextStyle(fontSize:25)),
              Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
              Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str2,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
              Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str3,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
              Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str4,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
              Text("Sheet Properties",style: TextStyle(fontSize:35,color: Colors.blueAccent ),),
              SizedBox(height: 10,),
              Text("When you click Info option available in the first column, it displays various properties in the third column of the backstage view. These properties include sheet size, title, tags, categories etc.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
              Text("You can also edit various properties. Just try to click on the property value and if property is editable, then it will display a text box where you can add your text like title, tags, comments, Author.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
              Text("Exit Backstage View",style: TextStyle(fontSize:35,color: Colors.blueAccent),),
              SizedBox(height: 10,),
              Text("It is simple to exit from the Backstage View. Either click on the File tab or press the Esc button on the keyboard to go back to excel working mode.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
            ])));

  }
}