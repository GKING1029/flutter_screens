import 'package:flutter/material.dart';
import 'package:flutter_screen_1/screen4.dart';
import 'package:flutter_screen_1/screen5.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  var _currentPage = 0;
  var pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text("Tutorial Screen")),
      ),
      body: Column(children: [
        Expanded(
          child: PageView(
            controller: pageController,
            onPageChanged: (int value) {
              setState(() {
                _currentPage = value;
              });
            },
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/vector4.jpg"),
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Game Dev",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding:
                          const EdgeInsets.only(top: 8, left: 30, right: 30),
                      child: Text(
                        "Learn about the importance of Games",
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/vector3.jpg"),
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Responsive Web Design",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8, left: 40, right: 40),
                      child:
                          Text("Importance of responsive design for websites"),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          // color: Colors.green,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/vector3.jpg"),
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Third",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    const Text("Data")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          // color: Colors.yellow,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/vector4.jpg"),
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Fourth",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    const Text("Data")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          // color: Colors.grey,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/vector2.jpg"),
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("UI/UX",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    const Text("Get extraodinary designs for your App")
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {
                    if (_currentPage < 4) {
                      _currentPage = 4;
                      print("Current page $_currentPage");
                      pageController.jumpToPage(_currentPage);
                      setState(() {});
                    }
                  },
                  child: const Text("Skip")),
              const Spacer(),
              ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: ((context, index) {
                    return Icon(
                      Icons.circle,
                      size: 12,
                      color: index == _currentPage
                          ? Colors.lightBlue
                          : Colors.grey,
                    );
                  })),
              const Spacer(),
              TextButton(
                onPressed: () {
                  if (_currentPage < 4) {
                    // _currentPage + 4;
                    pageController.nextPage(
                        duration: const Duration(milliseconds: 10),
                        curve: Curves.bounceIn);
                    setState(() {});
                  }
                },
                child: _currentPage < 4
                    ? const Text("Next")
                    : GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const Screen5())));
                        },
                        child: const Text("Done")),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
