import 'package:flutter/material.dart';

class Image extends StatelessWidget {
  final String imagename;

  Image({required this.imagename});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomRight, children: [
      Image.asset("assets/images/imagename"),
      Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Text(
          "car",
          style: TextStyle(color: Colors.deepOrange),
        ),
      )
    ]);
  }

  static asset(String s) {}

  ///88888aaaallllltttt
}
