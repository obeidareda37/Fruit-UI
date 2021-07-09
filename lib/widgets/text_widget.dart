import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String text;
  TextAlign textAlign;
  Color color;
  double fontSize;
  FontWeight fontWeight;

  TextWidget(
      {this.text, this.color, this.fontSize, this.fontWeight, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
