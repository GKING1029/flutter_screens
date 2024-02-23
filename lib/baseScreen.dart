import 'package:flutter/material.dart';
import 'package:flutter_screen_1/baseBody.dart';
import 'package:flutter_screen_1/screen5.dart';

class BaseScreen extends StatefulWidget {
  // const BaseScreen({super.key});
  final Widget body;
  BaseScreen({required this.body});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Text("Click on Circle"),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const BaseBody())));
              },
              child: Icon(Icons.circle))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(currentIndex: 2, items: const [
        BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: ""),
        BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            label: ""),
        BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.white,
            ),
            label: ""),
        BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.slideshow,
              color: Colors.white,
            ),
            label: ""),
        BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.circle,
              color: Colors.white,
            ),
            label: ""),
      ]),
    );
  }
}
