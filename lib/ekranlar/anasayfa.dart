import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:vucutgelistirme/ekranlar/egzersiz.dart';
import 'package:vucutgelistirme/ekranlar/profil.dart';
import 'package:vucutgelistirme/ekranlar/spor_takvimi.dart';
import 'package:vucutgelistirme/ekranlar/vkendeksi.dart';

import '../widget/Menu_Header.dart';
import '../widget/Menu_Items.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var SayfaListesi = [
    Sayfa1(),
    vkendeksi(),
    gunluk(),
    hesabim(),
  ];

  int secilenindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MenuHeader(),
              MenuItems(),
            ],
          ),
        ),
      ),
      body: SayfaListesi[secilenindex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              CommunityMaterialIcons.dumbbell,
              color: Color.fromARGB(255, 82, 11, 3),
            ),
            label: "EGZERSİZLER",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                CommunityMaterialIcons.aspect_ratio,
                color: Color.fromARGB(255, 82, 11, 3),
              ),
              label: "V-K ENDEKSİ"),
          BottomNavigationBarItem(
            icon: Icon(
              CommunityMaterialIcons.calendar,
              color: Color.fromARGB(255, 82, 11, 3),
            ),
            label: "SPOR TAKVİMİ",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                CommunityMaterialIcons.account,
                color: Color.fromARGB(255, 82, 11, 3),
              ),
              label: "PROFİL"),
        ],
        selectedItemColor: Color.fromARGB(255, 82, 11, 3),
        currentIndex: secilenindex,
        onTap: (index) {
          setState(() {
            secilenindex = index;
          });
        },
      ),
    );
  }
}
