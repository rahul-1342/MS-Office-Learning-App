import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:msoffice/msword.dart';
import 'package:msoffice/mswordbasic.dart';



void main() {
  runApp(const BSV());
}

class BSV extends StatelessWidget {
  const BSV({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      debugShowCheckedModeBanner: false,
    );
  }
}

class BulletListPage extends StatefulWidget {
  @override
  _BulletListPageState createState() =>_BulletListPageState();
}

class _BulletListPageState extends State<BulletListPage> {
  List<String> str1=["Compatibility Mode − If the document is not a native Word 2007/2019 document, a Convert button appears here, enabling you to easily update its format. Otherwise, this category does not appear."];
  List<String> str2=["Permissions − You can use this option to protect your word document. You can set a password so that nobody can open your document, or you can lock the document so that nobody can edit your document."];
  List<String> str3=["Prepare for Sharing − This section highlights important information you should know about your document before you send it to others, such as a record of the edits you made as you developed the document."];
  List<String> str4=["Versions − If the document has been saved several times, you may be able to access the previous versions of it from this section."];

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
                    onPressed: () {Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>MWB()));}
                )),

            body:ListView(children: [Text("Backstage View",style: TextStyle(fontSize:35 ,color: Colors.blue),),
              SizedBox(height: 10,),
              Text("In this chapter, we will discuss the Backstage View in Word 2019. The Backstage view was introduced in Word 2019. This acts as the central place for managing your documents. The backstage view helps in creating new documents, saving and opening documents, printing and sharing documents, and so on.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
              Text("Getting to the Backstage View is easy: Just click the File tab, located in the upper-left corner of the Word Ribbon. If you already do not have any opened document, then you will see a window listing down all the recently opened documents as follows −",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
              Container(width: 300,
                  height: 300,margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/backstage.png")))),
              Text("If you already have an opened document, then it will display a window showing detail about the opened document as shown below. Backstage view shows three columns when you select most of the available options in the first column.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
              Container(width: 300,
                  height: 300,margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/column.png")))),
              Text("The first column of the backstage view will have following options",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),

          Column(
                      children:<Widget>[

            Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                Table(
                  children:  [
                    TableRow(children: [
                      Text("Sr.No", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      Text("Option and Description", style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),

                    ]),
                    TableRow(children: [
                      Text("1", style: TextStyle(fontSize: 15.0),),
                      Container(child: Column(children: [Text("Save", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                        Text("If an existing document is opened, it will be saved as is, otherwise it will display a dialogue box asking for the document name", style: TextStyle(fontSize: 15.0),),],),)

                    ]),
                    TableRow(children: [
                      Text("2", style: TextStyle(fontSize: 15.0),),
                      Container(child: Column(children: [Text("Save As", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                        Text("A dialogue box will be displayed asking for document name and document type, by default it will save in word 2010 format with extension .docx.", style: TextStyle(fontSize: 15.0),),],),)

                    ]),
                    TableRow(children: [
                      Text("3", style: TextStyle(fontSize: 15.0),),
                      Container(child: Column(children: [Text("Open", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                        Text("This option is used to open an existing word document.", style: TextStyle(fontSize: 15.0),),],),)

                    ]),
                    TableRow(children: [
                      Text("4", style: TextStyle(fontSize: 15.0),),
                      Container(child: Column(children: [Text("Close", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                        Text("This option is used to close an open document.", style: TextStyle(fontSize: 15.0),),],),)

                    ]),
                    TableRow(children: [
                    Text("5", style: TextStyle(fontSize: 15.0),),
                      Container(child: Column(children: [Text("Info", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                      Text("This option displays information about the opened document.", style: TextStyle(fontSize: 15.0),),],),)

                    ],),
                   TableRow(children: [
                   Text("6", style: TextStyle(fontSize: 15.0),),
                   Container(child: Column(children: [Text("Recent", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                   Text(" This option lists down all the recently opened documents", style: TextStyle(fontSize: 15.0),),],),)
                   ]),
                    TableRow(children: [
                      Text("7", style: TextStyle(fontSize: 15.0),),
                      Container(child: Column(children: [Text("New", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                     Text("This option is used to open a new document.", style: TextStyle(fontSize: 15.0),),],),)
                   ]),
                   TableRow(children: [
                   Text("8", style: TextStyle(fontSize: 15.0),),
                   Container(child: Column(children: [Text("Print", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                   Text("This option is used to print an open document.", style: TextStyle(fontSize: 15.0),),],),)

                   ]),
                    TableRow(children: [
                   Text("9", style: TextStyle(fontSize: 15.0),),
                    Container(child: Column(children: [Text("Save & Send", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                    Text("This option will save an open document and will display options to send the document using email, etc.", style: TextStyle(fontSize: 15.0),),],),)
                   ]),
                    TableRow(children: [
                    Text("10", style: TextStyle(fontSize: 15.0),),
                      Container(child: Column(children: [Text("Help", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                    Text("This option is used to get the required help about Word 2019.", style: TextStyle(fontSize: 15.0),),],),)
                   ]),
                  TableRow(children: [
                  Text("11", style: TextStyle(fontSize: 15.0),),
                  Container(child: Column(children: [Text("Options", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                  Text("This option is used to set various option related to Word 2019.", style: TextStyle(fontSize: 15.0),),],),)
                   ]),
                  TableRow(children: [
                  Text("12", style: TextStyle(fontSize: 15.0),),
                  Container(child: Column(children: [Text("Exit", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                  Text("Use this option to close the document and exit.", style: TextStyle(fontSize: 15.0),),],),)
                  ]),]))]),
              SizedBox(height: 10,),
              Text("Document Information",style: TextStyle(fontSize:35 ,color: Colors.blue),),
              SizedBox(height: 10,),
             Text("When you click the Info option available in the first column, it displays the following information in the second column of the backstage view −",textAlign:TextAlign.justify,style: TextStyle(fontSize:27),),
             Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str1,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
             Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str2,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
             Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str3,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
             Container(padding: EdgeInsets.all(20),child: Column(children: [  BulletedList(listItems:str4,style: TextStyle(fontSize: 15,color: Colors.black),bullet: Icon(Icons.circle,color: Colors.black,),),],),),
              SizedBox(height: 10,),
              Text("Document Properties",style: TextStyle(fontSize:35 ,color: Colors.blue),),
              SizedBox(height: 10,),
              Text("When you click the Info option available in the first column, it displays various properties in the third column of the backstage view. These properties include the document size, the number of pages in the document, the total number of words in the document, the name of the author etc.",textAlign:TextAlign.justify,style: TextStyle(fontSize:27),),
             Text("You can also edit various properties by clicking on the property value and if the property is editable, then it will display a text box where you can add your text like title, tags, comments, Author.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),),
              SizedBox(height: 10,),
              Text("Exit Backstage View",style: TextStyle(fontSize:35 ,color: Colors.blue),),
              SizedBox(height: 10,),
             Text("It is simple to exit from the Backstage View. Either click on the File tab or press the Esc button on the keyboard to go back to the working mode of Word.",textAlign:TextAlign.justify,style: TextStyle(fontSize:25),)])));


  }
}