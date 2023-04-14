import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vucutgelistirme/ekranlar/anasayfa.dart';
import 'package:vucutgelistirme/ekranlar/sign_in.dart';
import 'package:vucutgelistirme/style/tema.dart';
import 'package:vucutgelistirme/widget/elevated_buton.dart';

class login_sayfa extends StatefulWidget {
  const login_sayfa({Key? key}) : super(key: key);

  @override
  State<login_sayfa> createState() => _login_sayfaState();
}

class _login_sayfaState extends State<login_sayfa> {
  Tema t1 = Tema();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage("Assets/login_logo.jpg"),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'HOŞGELDİNİZ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 82, 11, 3),
                  fontSize: 28,
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
              padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
              child: TextFormField(
                decoration: t1.inputDec(
                    'E posta adresinizi giriniz', Icons.people_alt_outlined),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
              padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
              child: TextFormField(
                obscureText: true,
                decoration: t1.inputDec('Şifrenizi giriniz', Icons.key),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: elevated_buton('GİRİŞ YAP', 250, () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Anasayfa()));
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: elevated_buton('KAYIT OL', 125, () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sign_in()));
                  }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
