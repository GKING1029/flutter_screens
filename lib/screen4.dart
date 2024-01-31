import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 2, 84, 151),
        body: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("          "),
              const Text(
                "Dental",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Container(
                margin: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: const Icon(
                  Icons.cancel,
                  size: 34,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Progress",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              Text(
                "1 of 2",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          Padding(
            padding: const EdgeInsets.all(4),
            child: Container(
              height: 4,
              child: LinearProgressIndicator(
                value: 0.5,
                backgroundColor: Colors.grey,
                color: Colors.white,
              ),
            ),
          ),
          // Container(
          //   height: 4,
          //   width: MediaQuery.of(context).size.width / 1.1,
          //   margin: const EdgeInsets.all(2),
          //   decoration: const BoxDecoration(
          //       color: Colors.grey,
          //       borderRadius: BorderRadius.all(Radius.circular(100))),
          // ),
          //   ],
          //),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Text(
                  "What Would You Like To Discuss?",
                  // softWrap: true,
                  // textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Choose Evalute The Usefulness",
                  // softWrap: true,
                  // textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    // fontSize: 8,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(children: [
              Expanded(
                  child: getContainerWidget(
                      icon: Icons.check_circle,
                      text: "Text 1",
                      icon1: Icons.volunteer_activism)),
            ]),
          ),
          Row(children: [
            Expanded(
                child: getContainerWidget(
                    icon: Icons.circle, text: "Text 2", icon1: Icons.circle)),
          ]),
          Row(children: [
            Expanded(
                child: getContainerWidget(
                    icon: Icons.circle, text: "Text 3", icon1: Icons.circle)),
          ]),
          Row(children: [
            Expanded(
                child: getContainerWidget(
                    icon: Icons.circle, text: "Text 4", icon1: Icons.circle))
          ]),
        ]));
  }

  Widget getContainerWidget(
      {IconData icon = Icons.search, icon1 = Icons.search, String text = ""}) {
    return Container(
      margin: const EdgeInsets.all(3),
      // width: 20,
      // height: 100,
      decoration: BoxDecoration(
          // boxShadow: const [
          //   BoxShadow(
          //     color: Color.fromARGB(255, 80, 79, 79),
          //     blurStyle: BlurStyle.normal,
          //     blurRadius: 8,
          //     spreadRadius: 3,
          //     offset: Offset(03, 05),
          //   )
          // ],
          color: Color.fromARGB(172, 9, 2, 70),
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 36,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Text(
              text,
              // textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(2),
            decoration: const BoxDecoration(
                color: const Color.fromARGB(255, 2, 84, 151),
                borderRadius: BorderRadius.all(Radius.circular(100))),
            child: Icon(
              icon1,
              size: 34,
            ),
          ),
        ],
      ),
    );
  }
}
