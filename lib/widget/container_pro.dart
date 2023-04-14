import 'package:flutter/material.dart';
import 'package:vucutgelistirme/style/tema.dart';

class Container_pro extends StatelessWidget {
  final Tema t1 = Tema();
  final TextEditingController? control;
  final String text;
  final IconData icon;
  Container_pro(this.control, this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.only(left: 8, right: 8, top: 10, bottom: 8),
      padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
      child: TextFormField(
        obscureText: text == 'ŞİFRE GİRİNİZ' ? true : false,
        controller: control,
        decoration: t1.inputDec(text, icon),
      ),
    );
  }
}
