import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_database/firebase_database.dart';
import '../register/register.dart';

class Home extends StatelessWidget {
  Home({this.uid});
  final String? uid;
  final String title = "Main page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              onPressed: () {
                FirebaseAuth auth = FirebaseAuth.instance;
                auth.signOut().then((res) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                      (Route<dynamic> route) => false);
                });
              },
            )
          ],
        ),
        body: Center(child: Text('Welcome!')));
  }
}
