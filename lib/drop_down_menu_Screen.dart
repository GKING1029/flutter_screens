import 'package:flutter/material.dart';

class DropDownMenuScreen extends StatefulWidget {
  const DropDownMenuScreen({super.key});

  @override
  State<DropDownMenuScreen> createState() => _DropDownMenuScreenState();
}

class _DropDownMenuScreenState extends State<DropDownMenuScreen> {
  var color;
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              DropdownMenu(
                width: 400,
                // leadingIcon: Icon(Icons.search),
                trailingIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                selectedTrailingIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: "Choose Color",
                textStyle: TextStyle(color: Colors.grey),
                inputDecorationTheme: const InputDecorationTheme(
                    // isCollapsed: false,
                    // isDense: false,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
                onSelected: (value) {
                  if (value != null) {
                    setState(() {
                      color = value;
                    });
                  }
                },
                dropdownMenuEntries: const <DropdownMenuEntry<Color>>[
                  DropdownMenuEntry(value: Colors.black, label: "Black"),
                  DropdownMenuEntry(value: Colors.red, label: "Red"),
                  DropdownMenuEntry(value: Colors.blue, label: "Blue"),
                ],
              )
            ])
          ],
        ),
      ),
    );
  }
}
