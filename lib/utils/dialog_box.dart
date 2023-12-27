// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import "package:todoapp/utils/my_button.dart";

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 159, 128, 212),
      content: Container(
        height: 150,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          // get user input
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new Task",
            ),
          ),

          // button -> save + cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // save btn
              MyButton(text: "Save", onPressed: onSave),

              const SizedBox(
                width: 10,
              ),

              // cancel btn
              MyButton(text: "Cancel", onPressed: onCancel),
            ],
          )
        ]),
      ),
    );
  }
}
