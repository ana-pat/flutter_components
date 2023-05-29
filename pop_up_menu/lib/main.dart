import 'package:flutter/material.dart';

import 'dialog_box.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Are you sure you want to eject this device?";
    const String description = "Because one volume could not be mounted.";
    const String buttonText1 = "Cancel";
    const String buttonText2 = "Force Eject";

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Eject Device'),
        ),
        body: const Center(
          child: DialogBox(
            title: title,
            description: description,
            buttonText1: buttonText1,
            buttonText2: buttonText2,
          ),
        ),
      ),
    );
  }
}
