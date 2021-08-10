import 'package:flutter/material.dart';
import 'package:hospichat/ForgotPassword.dart';
import 'loginScreen.dart';
import 'ForgotPassword.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      debugShowCheckedModeBanner: false,
      
      routes:{
        '/':(context) => LoginScreen(),
        '/password': (context) => ForgotPassword(),
      },
      //theme: ThemeData(
        //primarySwatch: Colors.blue,
      // ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

/*
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    User? result = FirebaseAuth.instance.currentUser;
    return new SplashScreen(
        useLoader: true,
        loadingTextPadding: EdgeInsets.all(0),
        loadingText: Text("Loading..."),
        //Should actually go to login page but rn wrote to registration page but its not working
        navigateAfterSeconds:
            result != null ? Home(uid: result.uid) : Register(),
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
*/