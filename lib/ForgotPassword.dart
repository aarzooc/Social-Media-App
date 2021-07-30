import 'logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget{
  static String id = 'forgot-password';

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF200B8B5),
      body: Form(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Logo("assets/images/logo.png"),
              Text(
                'Enter your email to reset your password',
                style: TextStyle(
                  fontSize: 25, 
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              TextFormField(

                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'Email',
                      icon: Icon(
                        Icons.mail,
                        color: Color(0xffE2BC00)
                      ),
                      errorStyle: TextStyle(color: Colors.black),
                      labelStyle: TextStyle(color: Colors.black),
                      hintStyle: TextStyle(color: Colors.black),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              SizedBox(height: 20),
              RaisedButton(
                elevation: 5,
                onPressed:() => print('Send email pressed'),
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                color: Color(0xffE2BC00),
                child: Text(
                  'Send Email',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}