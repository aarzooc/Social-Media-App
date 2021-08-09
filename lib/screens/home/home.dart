import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({this.uid});
  final String? uid;
  final String title = "Main page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('This is HospiCHATs main page!')),
    );
  }
}
