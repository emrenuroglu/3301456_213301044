import 'package:flutter/material.dart';

class elevated_buton extends StatelessWidget {
final String text;
final double uzunluk;
final VoidCallback? onPressed;


elevated_buton(this.text, this.uzunluk, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(

          backgroundColor: Colors.white30,
          elevation: 5,
          textStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          minimumSize: Size(uzunluk, 40),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0))),

      child: Text(
        text,

        style: TextStyle(color : Color.fromARGB(255, 82, 11, 3),),
      ),
    );
  }
}