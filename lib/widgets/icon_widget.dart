import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget{
  IconData icon;
  Color color;
  double size;


  IconWidget({this.icon, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
      size: size,
    );
  }

}