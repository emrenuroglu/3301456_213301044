import 'package:flutter/material.dart';

class detaymodel extends StatefulWidget {
  late String baslik;
  late String resim;
  detaymodel(this.baslik, this.resim, {Key? key}) : super(key: key);

  @override
  State<detaymodel> createState() => _detaymodelState();
}

class _detaymodelState extends State<detaymodel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 240,
        width: 120,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 82, 11, 3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Text(
                  widget.baslik.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white54,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            widget.resim,
                          ))),
                  width: 110,
                  height: 110,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
