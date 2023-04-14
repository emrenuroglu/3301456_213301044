import 'package:flutter/material.dart';
import 'package:vucutgelistirme/model/detaymodel.dart';
import 'package:vucutgelistirme/model/spormodel.dart';

class detay extends StatefulWidget {
  String baslik;
  detay(this.baslik, {Key? key}) : super(key: key);

  @override
  State<detay> createState() => _detayState();
}

class _detayState extends State<detay> {
  late List<spormodel> veri;

  void veriliste() {
    if (widget.baslik == "KARIN KASLARI") {
      veri = karin;
    } else if (widget.baslik == "SIRT KASLARI") {
      veri = sirt;
    } else if (widget.baslik == "GÖĞÜS") {
      veri = gogus;
    } else if (widget.baslik == "KOL") {
      veri = kol;
    } else if (widget.baslik == "OMUZLAR") {
      veri = omuz;
    } else if (widget.baslik == "BACAK KASLARI") {
      veri = bacak;
    }
  }

  @override
  void initState() {
    super.initState();
    veriliste();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: veri.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return detaymodel(veri[index].baslik, veri[index].resim);
        },
      ),
    );
  }
}
