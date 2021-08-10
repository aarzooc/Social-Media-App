import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hospichat/screens/home/home.dart';

class EmailLogIn extends StatefulWidget {
  EmailLogIn({this.uid});
  final String? uid;
  @override

  _EmailLogInState createState() => _EmailLogInState();
}

class _EmailLogInState extends State<EmailLogIn> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  bool? isRememberMe = false;

  @override
  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextFormField(
            controller:emailController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                color: Colors.black38
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top:14),
                prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xffE2BC00)
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextFormField(
            controller:passwordController,
            obscureText: true,
            style: TextStyle(
                color: Colors.black38
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top:14),
                prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xffE2BC00)
                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildForgotPassBtn(){
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            '/password',
          );
        },
        padding: EdgeInsets.only(right:0),
        child: Text(
          'Forgot Password?',
          style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  Widget buildRememberCb(){
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.black87),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Colors.black87,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  isRememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Remember Me',
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }

  Widget buildLoginBtn(){
    return Container (
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () =>
            setState((){
              isLoading=true;
              logInToFb();
              isLoading=false;
            })
        ,
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        color: Color(0xffE2BC00),
        child: Text(
          'SIGN IN',
          style: TextStyle(
              color: Colors.black87,
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  Widget buildSignUpBtn() {
    return GestureDetector(
      onTap: () => print("Sign Up Pressed"),
      child: RichText(
        text: TextSpan(
            children: [
              TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                  )
              ),
              TextSpan(
                  text: 'Sign Up',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  )
              )
            ]
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xF200B8B5), //aqua
                          Color(0xD900B8B5), //aqua
                          Color(0x9C00B8B5), //aqua
                          Color(0x8000B8B5), //aqua
                        ]
                    )
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 75
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //  ImageBanner("assets/images/logo3.png"),
                      /*
                    Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    */
                      SizedBox(height: 10,),
                      buildEmail(),
                      SizedBox(height: 20,),
                      buildPassword(),
                      buildForgotPassBtn(),
                      buildRememberCb(),
                      buildLoginBtn(),
                      buildSignUpBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


  void logInToFb() {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text)
        .then((result) {
      isLoading = false;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home(uid: result.user!.uid)),
      );
    }).catchError((err) {
      print(err.message);
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text(err.message),
              actions: [
                ElevatedButton(
                  child: Text("Ok"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    });
  }

}


