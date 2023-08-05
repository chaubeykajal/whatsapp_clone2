import 'package:flutter/material.dart';

Widget customtext ( String text, Color color, double size, FontWeight weight){
  return Text(text,
    style: TextStyle(
      color:color,
      fontSize: size,
      fontWeight: weight,

    ),
    
  );
}