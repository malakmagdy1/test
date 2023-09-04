import 'package:flutter/material.dart';
import 'package:untitled3/mashro3/calcBin.dart';
import 'package:untitled3/mashro3/calculator.dart';
import 'package:untitled3/mashro3/convert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        "calculator": (context) => Calculator(),
        "convert": (context) => Convert(),
        "calcBin": (context) => CalcBin(),
      },
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CHOOSE OPTION ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: (20),
              )),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/images/pexels-anna-tarazevich-5598288.jpg"),
                OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "convert");
                    },
                    child: Text(
                      "convert ",
                      style: TextStyle(
                          fontSize: (20), fontWeight: FontWeight.bold),
                    )),
                OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "calcBin");
                    },
                    child: Text(
                      "Calculate Binary",
                      style: TextStyle(
                          fontSize: (20), fontWeight: FontWeight.bold),
                    )),
                OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "calculator");
                    },
                    child: Text(
                      "Calculator",
                      style: TextStyle(
                          fontSize: (20), fontWeight: FontWeight.bold),
                    )),
              ]),
        ));
  }
}
