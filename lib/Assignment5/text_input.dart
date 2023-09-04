import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final IconData buttton;

  TextInput(
      {required this.controller, required this.hint, required this.buttton});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Stack(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: hint,
                ),
                style: TextStyle(color: Colors.black),
              ),
              Positioned(
                  right: 10,
                  child: IconButton(
                    icon: Icon(
                      buttton,
                      color: Colors.black,
                    ),
                    onPressed: (() {}),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
