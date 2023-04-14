import 'package:flutter/material.dart';

class MenuHeader extends StatelessWidget {
  MenuHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      color: Color.fromARGB(255, 82, 11, 3),
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            const CircleAvatar(
              backgroundImage: AssetImage("Assets/login_logo.jpg"),
              radius: 40,
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Hoşgeldiniz",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                ),
              ),
            ),
            Text(
              'Emre Nuroğlu',
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
