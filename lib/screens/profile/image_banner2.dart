import 'package:flutter/material.dart';

class ImageBanner2 extends StatelessWidget {
  final String _assetPath;

  ImageBanner2(this._assetPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: 100.0),
      child: Image.asset(_assetPath, fit: BoxFit.contain),
    );
  }
}
