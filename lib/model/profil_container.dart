import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class profilcontainer extends StatelessWidget {
  double top1;
  String text;
  IconData ikon;
  profilcontainer(
    this.top1,
    this.text,
    this.ikon, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: top1, bottom: 10),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Color.fromARGB(
              255,
              82,
              11,
              3,
            ),
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(ikon, color: Colors.white),
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Icon(Icons.navigate_next_rounded, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
