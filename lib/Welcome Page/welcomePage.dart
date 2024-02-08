import 'package:flutter/material.dart';
import 'package:level2_tugas1/Login/login.dart';

class CobaPage extends StatelessWidget {
  const CobaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assets/logo/Logo yayasan.png"),
                width: 250,
                alignment: Alignment.topCenter,
              )
            ],
          ),
          SizedBox(height: 25),
          Text(
            "Selamat datang",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff00B050)),
          ),
          Text(
            "Yayasan Al-Muhajirin Istiqomah",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
          ),
          SizedBox(height: 35),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xff00B050),
              minimumSize: Size(275, 50),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageLogin(),
                ),
              );
            },
            child: Text(
              "Masuk",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      )),
    );
  }
}
