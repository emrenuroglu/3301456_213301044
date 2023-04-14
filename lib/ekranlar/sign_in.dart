
import 'package:flutter/material.dart';
import 'package:vucutgelistirme/style/tema.dart';
import 'package:vucutgelistirme/widget/container_pro.dart';
import 'package:vucutgelistirme/widget/elevated_buton.dart';

class sign_in extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  Tema t1 = Tema();

  final _tfkullanici_adi=TextEditingController();
  final _tfkullanici_soyad=TextEditingController();
  final _tfkullanici_email=TextEditingController();
  final _tfkullanici_sifre=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('KAYIT OL ',style: TextStyle(
              fontSize: 40,color:  Color.fromARGB(255, 82, 11, 3,),fontWeight: FontWeight.bold
            ),

            ),
            SizedBox(
              height: 50,
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  Row(  
                    children: [
                      Expanded(
                          child:
                          Container_pro(_tfkullanici_adi, 'ADINIZ', Icons.text_decrease)),
                      Expanded(
                          child:
                          Container_pro(_tfkullanici_soyad, 'SOYADINIZ', Icons.text_decrease)),
                    ],
                  ),
                  Column(
                    children: [
                      Container_pro(_tfkullanici_email, 'E-mail GİRİNİZ', Icons.mail),
                      Container_pro(_tfkullanici_sifre, 'ŞİFRE GİRİNİZ', Icons.password_outlined),
                    ],
                  ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: elevated_buton('GERİ ', 190, () {
                     Navigator.pop(context);
                   }),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: elevated_buton('KAYIT OL ', 190, () { }),
                 ),
               ],
                        ) ,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
