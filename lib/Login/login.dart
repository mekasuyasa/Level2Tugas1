// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:level2_tugas1/Home/homePage.dart';

class PageLogin extends StatelessWidget {
  const PageLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00B050),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("assets/logo/Logo yayasan.png"),
                    width: 200,
                    alignment: Alignment.center,
                  )
                ],
              ),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: Column(
                  children: [
                    SizedBox(
                      height: 55,
                      child: TextFormField(
                        cursorColor: Color(0xff00B050),
                        cursorHeight: 17,
                        decoration: InputDecoration(
                            label: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.mail_outline,
                                  color: Color(0xff00B050),
                                  size: 15,
                                ),
                                Text(
                                  " Email",
                                  style: TextStyle(
                                      color: Color(0xff00B050),
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                            filled: true,
                            floatingLabelStyle:
                                TextField.materialMisspelledTextStyle,
                            fillColor: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                      height: 55,
                      child: TextFormField(
                        obscureText: true,
                        cursorColor: Color(0xff00B050),
                        cursorHeight: 17,
                        decoration: InputDecoration(
                            label: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  " Password",
                                  style: TextStyle(
                                      color: Color(0xff00B050),
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                Icon(Icons.key);
                              },
                              icon: Icon(Icons.key_off_outlined),
                            ),
                            filled: true,
                            floatingLabelStyle:
                                TextField.materialMisspelledTextStyle,
                            fillColor: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(275, 30), primary: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePageWidget(),
                    ),
                  );
                },
                child: Text(
                  "Masuk",
                  style: TextStyle(
                    color: Color(0xff00B050),
                  ),
                ),
              ),
              SizedBox(
                height: 28,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Lupa Password?",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "  OR  ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 174,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(275, 30),
                                  primary: Color(0xff0082cd)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PageLogin(),
                                  ),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    size: 20,
                                  ),
                                  Text(
                                    "Log in with Facebook",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(275, 30),
                                  primary: Color.fromARGB(255, 196, 59, 78)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PageLogin(),
                                  ),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.g_mobiledata,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    size: 29,
                                  ),
                                  Text(
                                    "Log in with Google",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Tidak Punya Akun?",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 28,
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Klik Daftar",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: Colors.blue),
                                      )),
                                ),
                              ],
                            )
                          ]),
                        ),
                      ],
                    ),
                  ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
