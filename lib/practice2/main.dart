import 'package:flutter/material.dart';
import 'package:untitled3/practice2/calculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: CalcullatorScreen.routeName,
      routes: {
        CalcullatorScreen.routeName: (context) => CalcullatorScreen(),
      },
    );
  }
}
