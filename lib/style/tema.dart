import 'package:flutter/material.dart';

class Tema {
  inputDec(String text,IconData icon){
    return InputDecoration(
      hintText: text,
      hintStyle: TextStyle(color: Color.fromARGB(255, 82, 11, 3),),
      border: InputBorder.none,
      prefixIcon: Icon(icon,color:  Color.fromARGB(255, 82, 11, 3),),
    );
  }
}