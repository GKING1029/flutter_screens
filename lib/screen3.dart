import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/background.jpg")),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    )),
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 60,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "USER",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      )
                    ]),
              )),
          Positioned(
              //bottom: 0,
              // left: 0,
              // right: 0,
              child: Container(
            height: MediaQuery.of(context).size.height / 1.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin: const EdgeInsets.all(10),
                        height: 100,
                        width: 50,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(117, 0, 0, 0),
                                  blurRadius: 5,
                                  spreadRadius: 5,
                                  offset: Offset(0, 2))
                            ],
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.home,
                                size: 30,
                              ),
                              Text(
                                "Home",
                                style: TextStyle(fontSize: 20),
                              )
                            ]),
                      )),
                      Expanded(
                          child: Container(
                        margin: const EdgeInsets.all(10),
                        height: 100,
                        width: 50,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(117, 0, 0, 0),
                                  blurRadius: 5,
                                  spreadRadius: 5,
                                  offset: Offset(0, 2))
                            ],
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.computer,
                                size: 30,
                              ),
                              Text(
                                "My PC",
                                style: TextStyle(fontSize: 20),
                              )
                            ]),
                      ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin: const EdgeInsets.all(10),
                        height: 100,
                        width: 50,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(117, 0, 0, 0),
                                  blurRadius: 5,
                                  spreadRadius: 5,
                                  offset: Offset(0, 2))
                            ],
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.contact_page,
                                size: 30,
                              ),
                              Text(
                                "Contacts",
                                style: TextStyle(fontSize: 20),
                              )
                            ]),
                      )),
                      Expanded(
                          child: Container(
                        margin: const EdgeInsets.all(10),
                        height: 100,
                        width: 50,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(117, 0, 0, 0),
                                  blurRadius: 5,
                                  spreadRadius: 5,
                                  offset: Offset(0, 2))
                            ],
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.book_outlined,
                                size: 30,
                              ),
                              Text(
                                "My Book",
                                style: TextStyle(fontSize: 20),
                              )
                            ]),
                      ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin: const EdgeInsets.all(10),
                        height: 100,
                        width: 50,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(117, 0, 0, 0),
                                  blurRadius: 5,
                                  spreadRadius: 5,
                                  offset: Offset(0, 2))
                            ],
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.calendar_month,
                                size: 30,
                              ),
                              Text(
                                "Calender",
                                style: TextStyle(fontSize: 20),
                              )
                            ]),
                      )),
                      Expanded(
                          child: Container(
                        margin: const EdgeInsets.all(10),
                        height: 100,
                        width: 50,
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(117, 0, 0, 0),
                                  blurRadius: 5,
                                  spreadRadius: 5,
                                  offset: Offset(0, 2))
                            ],
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone_android,
                                size: 30,
                              ),
                              Text(
                                "My Mobile",
                                style: TextStyle(fontSize: 20),
                              )
                            ]),
                      ))
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
