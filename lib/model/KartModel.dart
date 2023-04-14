import 'package:flutter/material.dart';
import 'package:vucutgelistirme/ekranlar/detay.dart';

class kartmodel extends StatefulWidget {
  String baslik;

  kartmodel(this.baslik, {Key? key}) : super(key: key);

  @override
  State<kartmodel> createState() => _kartmodelState();
}

class _kartmodelState extends State<kartmodel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => detay(widget.baslik)));
        },
        child: Container(
          height: 240,
          width: 140,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 82, 11, 3),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              widget.baslik,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
