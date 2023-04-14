
import 'package:flutter/material.dart';
import 'package:vucutgelistirme/model/profil_container.dart';

class hesabim extends StatefulWidget {
  const hesabim({Key? key}) : super(key: key);

  @override
  State<hesabim> createState() => _hesabimState();
}

class _hesabimState extends State<hesabim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('HESABIM',
            style: TextStyle(
              fontSize: 26,
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          profilcontainer(50,'Muhammed Emre NUROĞLU',Icons.person),
          profilcontainer(5,'canımkaslarm@gmail.com',Icons.email_rounded),
          profilcontainer(5,'ŞİFRE DEĞİŞTİR',Icons.lock_rounded),
          profilcontainer(5,'AYARLAR',Icons.settings),
          profilcontainer(5, 'ÇIKIŞ YAP',Icons.output),

        ],
      ),
    );
  }
}
