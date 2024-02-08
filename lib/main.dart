import 'package:flutter/material.dart';
import 'package:level2_tugas1/Welcome%20Page/welcomePage.dart';

void main() {
  runApp(const MesApp());
}

class MesApp extends StatelessWidget {
  const MesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CobaPage(),
    );
  }
}
