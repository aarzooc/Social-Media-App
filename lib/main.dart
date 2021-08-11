import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:hospichat/screens/home/home.dart';
import 'package:hospichat/screens/register/register.dart';
import 'package:hospichat/screens/login/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sign Up',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IntroScreen(),
    );
  }
}

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User? result = FirebaseAuth.instance.currentUser;
    return new SplashScreen(
        useLoader: true,
        loadingTextPadding: EdgeInsets.all(0),
        loadingText: Text("Loading..."),
        //Should actually go to login page but rn wrote to registration page but its not working
        navigateAfterSeconds:
            result != null ? Home(uid: result.uid) : EmailLogIn(),
        seconds: 5,
        title: new Text(
          'Welcome To HospiCHAT!',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: Image.asset('assets/images/logo1.png', fit: BoxFit.scaleDown),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 10.0,
        onClick: () => print("flutter"),
        loaderColor: Colors.red);
  }
}
