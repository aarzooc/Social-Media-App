import 'package:flutter/material.dart';

class Logo extends StatelessWidget{
  final String _assetPath;

  Logo(this._assetPath);

  @override
  Widget build(BuildContext context){
    return Container(
      constraints: BoxConstraints.expand(height: 100.0),
      child: Image.asset(_assetPath, fit: BoxFit.contain),
    );
  }
}