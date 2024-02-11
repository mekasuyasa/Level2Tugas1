/* Tugas Level2
Deskripsi Tugas: Membuat aplikasi menggunakan flutter 
mengikuti contoh namun tidak menggunakan GetX
===============================================
Adapun beberapa file dart yang dibuat, sebagai berikut:
1. main.dart        : Fungsi utama untuk menjalankan awal aplikasi
2. welcomePage.dart : Menjalankan tampilan selamat datang
3. login.dart       : Menjalankan tampilan login 
4. homePage.dart    : Menjalankan tampilan homePage

Catatan pengerjaan tugas ini disampaikan pada:
https://docs.google.com/document/d/1Ejle8gKx4Lj59yJ86CKrzikgspBckY1Ydlza_Mvmee4
*/

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
