import 'package:flutter/material.dart';
import 'package:hospichat/screens/forum/screen/home_forum.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xF200B8B5),
        fontFamily: 'Montserratcd'
      ),
      home: HomeForumPage(),
    );
  }
}