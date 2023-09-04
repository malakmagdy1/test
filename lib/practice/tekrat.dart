import 'package:flutter/material.dart';

class TabTitle extends StatelessWidget {
  final String title;

  TabTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      //first it was contaniner then i change it to expanded to take all screen in vertical
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.pink,
          ),
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          )),
    );
  }
}
