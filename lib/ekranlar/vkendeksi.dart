import 'package:flutter/material.dart';

class vkendeksi extends StatefulWidget {
  const vkendeksi({Key? key}) : super(key: key);

  @override
  State<vkendeksi> createState() => _vkendeksiState();
}

class _vkendeksiState extends State<vkendeksi> {
  double boy = 160.0;
  double kilo = 55.0;
  var secilicinsiyet;
  late String olcu;
  dynamic renk;
  late double sonuc;
  hesapla() {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            content: Container(
          width: 150,
          height: 150,
          child: Column(
            children: [
              Text(
                'SONUÇ ',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 82, 11, 3),
                  fontSize: 24,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  sonuc.toStringAsFixed(3),
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
              Text(
                olcu,
                style: TextStyle(
                  fontSize: 27,
                ),
              ),
            ],
          ),
        ));
      },
    );
  }

  Sonuc() {
    setState(() {
      sonuc = (kilo) / ((boy / 100) * (boy / 100));
      if (sonuc < 18) {
        olcu = 'Zayıf';
      } else if (18 >= sonuc && sonuc < 25) {
        olcu = 'Normal';
      } else if (25 >= sonuc && sonuc < 30) {
        olcu = 'kilolu';
      } else if (30 >= sonuc && sonuc < 35) {
        olcu = 'obez';
      } else {
        olcu = 'AŞIRI OBEZ';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        title: const Text(
          "VÜCÜT KİTLE ENDEKSİ",
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.white30,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15.0),
                color: Color.fromARGB(255, 82, 11, 3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "BOYUNUZ(CM)",
                          style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 150,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(boy.round().toString(),
                            style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Slider(
                      min: 0,
                      max: 300,
                      value: boy,
                      activeColor: Colors.white,
                      inactiveColor: Colors.white,
                      onChanged: (double value) {
                        setState(() {
                          boy = value;
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15.0),
                color: Color.fromARGB(255, 82, 11, 3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "KİLONUZ(KG)",
                          style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 150,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(kilo.round().toString(),
                            style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Slider(
                      min: 0,
                      max: 250,
                      value: kilo,
                      activeColor: Colors.white,
                      inactiveColor: Colors.white,
                      onChanged: (double value) {
                        setState(() {
                          kilo = value;
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          secilicinsiyet = "ERKEK";
                        });
                      },
                      child: Icon(
                        Icons.man,
                        color: secilicinsiyet == "ERKEK"
                            ? renk = Colors.blue
                            : renk = Colors.white,
                        size: 100,
                      )),
                ),
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          secilicinsiyet = "KADIN";
                        });
                      },
                      child: Icon(
                        Icons.woman,
                        color: secilicinsiyet == "KADIN"
                            ? renk = Colors.red
                            : renk = Colors.white,
                        size: 100,
                      )),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Sonuc();
                  hesapla();
                },
                child: Text(
                  "HESAPLA",
                  style: TextStyle(
                    color: Color.fromARGB(255, 82, 11, 3),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
