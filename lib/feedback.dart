import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Feedbackss());
}

class Feedbackss extends StatefulWidget {
  const Feedbackss({super.key});



  @override
  State<Feedbackss> createState() => _HomePageState();
}

class _HomePageState extends State<Feedbackss> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  final CollectionReference _feedback =
  FirebaseFirestore.instance.collection('feedbacks');

  // This function is triggered when the floatting button or one of the edit buttons is pressed
  // Adding a product if no documentSnapshot is passed
  // If documentSnapshot != null then update an existing product
  Future<void> _createOrUpdate([DocumentSnapshot? documentSnapshot]) async {
    String action = 'create';
    if (documentSnapshot != null) {
      action = 'update';
      _nameController.text = documentSnapshot['name'];
      _emailController.text = documentSnapshot['email'].toString();
    }

    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext ctx) {
          return Padding(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                // prevent the soft keyboard from covering text fields
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                TextField(

                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                    )
                ),
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                TextField(

                  controller: _subjectController,
                  decoration: const InputDecoration(
                    labelText: 'Subject',
                  ),
                ),
                TextField(
                  controller: _messageController,
                  decoration: const InputDecoration(
                    labelText: 'Message',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: Text(action == 'create' ? 'Create' : 'Update'),
                  onPressed: () async {
                    final String? name = _nameController.text;
                    final String? email = _emailController.text;
                    final String? subject = _subjectController.text;
                    final String? message = _messageController.text;

                    if (name != null && email != null && subject !=null && message!=null) {
                      if (action == 'create') {
                        // Persist a new product to Firestore
                        await _feedback.add({"name": name, "email": email,"subject":subject,"message":message});
                      }



                      // Clear the text fields
                      _nameController.text = '';
                      _emailController.text = '';
                      _subjectController.text = '';
                      _messageController.text = '';

                      // Hide the bottom sheet
                      Navigator.of(context).pop();
                    }
                  },
                )
              ],
            ),
          );
        });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Send Feedback'),
        ),
        // Using StreamBuilder to display all products from Firestore in real-time
        body: Center(child: IconButton(icon: Icon(Icons.feedback,size: 40,), onPressed: () { _createOrUpdate(); },),)
    );
  }
}

