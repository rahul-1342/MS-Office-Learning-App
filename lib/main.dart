import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:msoffice/Feedback.dart';
import 'package:msoffice/detailsedge.dart';
import 'package:msoffice/msword.dart';
import 'package:msoffice/mspowerpoint.dart';
import 'package:msoffice/msexcel.dart';
import 'package:msoffice/msaccess.dart';
import 'package:msoffice/msoutlook.dart';
import 'package:msoffice/share_plus.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: "AIzaSyBzZ3cFNq3esj-kqu-bTGVc44xnEzBkKBU", appId: "1:794029823294:android:94810a85ed13db9325886f", messagingSenderId:"794029823294", projectId:" msoffice-21954")
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffeff),
      body: Center(
        child: Image.asset ("img/office.gif"),
      ),

    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();

  }
  Future<bool> _onWillPop() async {
    return (await showDialog(

      builder: (context) => AlertDialog(
        title: Text('Are you sure?'),
        content: Text('Do you want to exit the App'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('No'),
          ),
          TextButton(
            onPressed: () {
              SystemNavigator.pop();
            },
            child: Text('Yes'),
          ),
        ],
      ), context: context,
    )) ??
        false;}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("MS Office Learning"),
          backgroundColor: Colors.deepOrange,

        ),
        drawer: Drawer(child: ListView(children: <Widget>[
          DrawerHeader(decoration: BoxDecoration(color: Colors.deepOrange),
            child: Text("Welcome to MS Office",
              style: TextStyle(color: Colors.white, fontSize: 30),),),
          Divider(height: 0.2),
          ListTile(title: Text("Feedback",),
            leading: Icon(Icons.feedback,color: Colors.deepOrange,),onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Feedbackss()));
            },),
          ListTile(title: Text("Share"),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SR(age: 'PlayStore', socialmedia: 'WhatsApp',)));},
              leading: Icon(Icons.share,color: Colors.deepOrange,)),
          ListTile(title: Text("Exit"),
            onTap: (){_onWillPop();},
            leading: Icon(Icons.exit_to_app,color: Colors.deepOrange,),),

        ],),),

        body: Container(height: 670,
            child: GridView.extent(
                scrollDirection: Axis.vertical,
                primary: false,
                padding: const EdgeInsets.all(16),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                maxCrossAxisExtent: 200.0,
                children: <Widget>[GestureDetector(child:Container(
                  padding: const EdgeInsets.all(8),
                  child:  Container(
                    width:500,
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(20.0),),
                    ),margin: EdgeInsets.only(top: 121,),
                  ),   decoration: BoxDecoration(color:Colors.black12,
                  image: DecorationImage(
                    image: AssetImage('img/Word.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius:
                  BorderRadius.all(Radius.elliptical(10,0),),
                ),
                ),onTap:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>MWord()));}),
                  GestureDetector(child:Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(color: Colors.black12,
                      image: DecorationImage(
                        image: AssetImage('img/PowerPoint.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                      BorderRadius.all(Radius.elliptical(20, 0)),
                    ),
                  ),onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>MSP()));} ,),
                  GestureDetector(child:Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(color: Colors.black12,
                      image: DecorationImage(
                        image: AssetImage('img/Excel.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                      BorderRadius.all(Radius.elliptical(20, 0)),
                    ),
                  ),onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>MSE()));} ,),
                  GestureDetector(child:Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(color: Colors.black12,
                      image: DecorationImage(
                        image: AssetImage('img/Access.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                      BorderRadius.all(Radius.elliptical(20, 0)),
                    ),
                  ),onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>MSA()));} ,),
                  GestureDetector(child:Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(color: Colors.black12,
                      image: DecorationImage(
                        image: AssetImage('img/OutLook.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                      BorderRadius.all(Radius.elliptical(20, 0)),
                    ),
                  ),onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>MSO()));},),
                  GestureDetector(child:Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(color: Colors.black12,
                      image: DecorationImage(
                        image: AssetImage('img/Edge.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                      BorderRadius.all(Radius.elliptical(20, 0)),
                    ),
                  ),onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>DetE()));},)])));





  }
}

