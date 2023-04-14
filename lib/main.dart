
import 'package:flutter/material.dart';
import 'package:vucutgelistirme/ekranlar/login.dart';

void main() {
  runApp(const benimUyg());

}

class benimUyg extends StatelessWidget {
  const benimUyg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white30,
            titleTextStyle: TextStyle(fontWeight: FontWeight.bold)
        ),
        scaffoldBackgroundColor: Colors.white30,
      ),
      home: login_sayfa(),
    );

  }
}
