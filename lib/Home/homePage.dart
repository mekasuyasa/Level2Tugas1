import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageStateWidget();
}

class _HomePageStateWidget extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
              child: Container(
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.all(4),
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        Container(
                          width: 65,
                          height: 65,
                          child: Image.asset(
                            "assets/image/Avatar 1.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color(0xff43d442),
                                border: Border.all(
                                  color: Colors.white70,
                                  width: 3,
                                ),
                              )),
                        )
                      ],
                    )),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Hallo, Muhammad Eka Suyasa !",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                        Row(children: [
                          Container(
                            width: 10,
                            height: 15,
                            child: Image.asset(
                              "assets/icon/point.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          const Text(" 140297",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber))
                        ])
                      ],
                    ),
                    SizedBox(width: 50),
                    Container(
                      width: 15,
                      height: 18,
                      child: Image.asset(
                        "assets/icon/notification.png",
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                )
              ],
            ),
          ))),
    );
  }
}
