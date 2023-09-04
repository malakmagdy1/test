import 'package:flutter/material.dart';
import 'package:untitled3/practice/tekrat.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Row(children: [
          TabTitle(
            title: '"like"',
          ),
          const SizedBox(
            width: 5,
          ),
          TabTitle(
            title: '"share"',
          ),
        ]),
        Row(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image.asset("assets/images/wallpaperflare.com_wallpaper.jpg"),
                Container(
                    decoration: BoxDecoration(color: Colors.black),
                    child: Text(
                      "car",
                      style: TextStyle(color: Colors.deepOrange),
                    ))
              ],
            )
          ],
        ),
      ]),
    );
  }
}
