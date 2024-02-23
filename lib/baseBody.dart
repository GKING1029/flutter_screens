import 'package:flutter/material.dart';
import 'package:flutter_screen_1/baseScreen.dart';

class BaseBody extends StatefulWidget {
  const BaseBody({super.key});

  @override
  State<BaseBody> createState() => _BaseBodyState();
}

class _BaseBodyState extends State<BaseBody> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        body: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("images/pattern.png"),
              opacity: .4,
            ))));
  }
}
