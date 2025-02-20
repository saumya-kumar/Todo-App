// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:project/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),
            // save and cancel button
            Padding(
              padding: const EdgeInsets.only(top: 32.0, left: 16),
              child: Row(
                children: [
                  // save button
                  MyButton(
                    text: "Save",
                    onPressed: onSave,
                  ),

                  // cancel button
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: MyButton(
                      text: "Cancel",
                      onPressed: onCancel,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
