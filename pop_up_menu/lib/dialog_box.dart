import 'package:flutter/material.dart';

class DialogBox extends StatefulWidget {
  final String title;
  final String description;
  final String buttonText1;
  final String buttonText2;

  const DialogBox({
    super.key,
    required this.title,
    required this.description,
    required this.buttonText1,
    required this.buttonText2,
  });

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    String title = widget.title;
    String description = widget.description;
    String buttonText1 = widget.buttonText1;
    String buttonText2 = widget.buttonText2;

    void forceEject() {
      Navigator.of(context).pop();
    }

    return TextButton(
      onPressed: () => showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          actionsAlignment: MainAxisAlignment.start,
          title: Text(title),
          content: Text(description),
          actions: [
            OutlinedButton(
              onPressed: () => forceEject,
              child: Text(
                buttonText2,
                style: const TextStyle(color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: Text(
                buttonText1,
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
          ],
        ),
      ),
      child: const Text('Eject Device'),
    );
  }
}
