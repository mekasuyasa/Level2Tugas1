import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageStateWidget();
}

class _HomePageStateWidget extends State<HomePageWidget> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<String> imgList = [
    "https://i.ibb.co/F0mhY9H/Course-1.png",
    "https://i.ibb.co/8xR7Q4m/Course-2-1.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            SizedBox(
              child: Column(children: [
                const SizedBox(height: 10),
                const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      SizedBox(width: 10),
                      StoryVideo(image: "assets/image/video1.jpg"),
                      StoryVideo(image: "assets/image/video2.jpg"),
                      StoryVideo(image: "assets/image/video3.jpg"),
                      StoryVideo(image: "assets/image/video4.jpg"),
                      StoryVideo(image: "assets/image/video5.jpg"),
                      StoryVideo(image: "assets/image/video6.jpg"),
                    ])),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "    Upcoming",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text("  Course this Week", style: TextStyle(fontSize: 20)),
                  ],
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      kategori(
                        judul: "All",
                        status: true,
                      ),
                      kategori(
                        judul: "UI/UX",
                        status: false,
                      ),
                      kategori(
                        judul: "Illustration",
                        status: false,
                      ),
                      kategori(
                        judul: "3D Animation",
                        status: false,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                SingleChildScrollView(
                    child: Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                          height: 350,
                          autoPlay: true,
                          enableInfiniteScroll: false,
                          enlargeCenterPage: true,
                          onPageChanged: (index, carouselReason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                      items: imgList
                          .map((item) => Container(
                                child: Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)),
                                      child: Stack(
                                        children: <Widget>[
                                          Image.network(item,
                                              fit: BoxFit.cover, width: 1000.0),
                                        ],
                                      )),
                                ),
                              ))
                          .toList(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imgList.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Container(
                            width: 25.0,
                            height: 12.0,
                            margin: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ))
              ]),
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: const Color(0xff43d442),
          height: 80,
          elevation: 0,
          selectedIndex: 0,
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: "Home",
            ),
            NavigationDestination(
                icon: Icon(
                  Icons.graphic_eq_outlined,
                  color: Colors.white,
                ),
                label: "Laporan"),
            NavigationDestination(
                icon: Icon(
                  Icons.folder,
                  color: Colors.white,
                ),
                label: "Dokumen"),
            NavigationDestination(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                label: "Setting")
          ],
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xff00B050),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.notification_add))
          ],
          title: const SizedBox(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Muhammad Eka Suyasa",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text(
                "administrator",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          )),
          leading: IconButton(
            onPressed: () {},
            icon: Container(
                padding: const EdgeInsets.all(4),
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10)),
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
          ),
        ),
      ),
    );
  }
}

class kategori extends StatelessWidget {
  kategori({
    Key? key,
    required this.judul,
    required this.status,
  }) : super(key: key);
  final String judul;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: status == true ? Color(0xff43d442) : Colors.grey[300],
          borderRadius: BorderRadius.circular(12)),
      child: Text(
        judul,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: status == true ? Colors.white : Colors.grey),
      ),
    );
  }
}

class StoryVideo extends StatelessWidget {
  const StoryVideo({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border:
                        Border.all(width: 5, color: const Color(0xff43d442))),
              ),
              Stack(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(100)),
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 7, color: Colors.white)),
              )
            ],
          ),
          Stack(alignment: Alignment.center, children: [
            Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color.fromRGBO(66, 166, 212, 1),
                  border: Border.all(
                    color: Colors.white70,
                    width: 3,
                  ),
                )),
            const Icon(
              Icons.videocam,
              color: Colors.white,
              size: 15,
            )
          ])
        ],
      ),
    );
  }
}
