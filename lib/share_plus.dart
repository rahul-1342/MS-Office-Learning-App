import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';


class SR extends StatelessWidget
{
  final String socialmedia;
  final String age;
  SR({Key?Key,required this.socialmedia,required this.age})
   :super(key: Key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar:  AppBar(
        title: Text("Invite Friends Page"),
     centerTitle: true,
      ),
          body:Center(child:ElevatedButton(child: const Text("Share"),onPressed:(){
Share.share("Share My App $socialmedia on $age");
          })));}
}