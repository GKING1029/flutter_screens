import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Center(child: Text("Corn Salad with Red Beans"))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(Icons.whatshot),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("305.5",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.black)),
                    ),
                    Text(
                      "Calories",
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 15,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Icon(Icons.alarm),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("30 mins",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.black)),
                  ),
                  Text(
                    "Time",
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 15,
                        color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Ingredients Required",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                  color: Colors.redAccent),
            ),
          ),
          Container(
              color: Colors.black12,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.add_circle),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("This Text is in Container"),
                    ),
                  ],
                ),
              )),
          Container(
              color: Colors.black38,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.remove_circle),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("This Text is in Container"),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
