import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorSate createState() => _CalculatorSate();
}

class _CalculatorSate extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
          style: TextStyle(fontSize: (30)),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.greenAccent),
                ),
              ),
            ),
            Row(
              children: [
                customOutlineButton("9"),
                customOutlineButton("8"),
                customOutlineButton("7"),
                customOutlineButton("+"),
              ],
            ),
            Row(
              children: [
                customOutlineButton("6"),
                customOutlineButton("5"),
                customOutlineButton("4"),
                customOutlineButton("-"),
              ],
            ),
            Row(
              children: [
                customOutlineButton("3"),
                customOutlineButton("2"),
                customOutlineButton("1"),
                customOutlineButton("x"),
              ],
            ),
            Row(
              children: [
                customOutlineButton("C"),
                customOutlineButton("0"),
                customOutlineButton("="),
                customOutlineButton("/"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget customOutlineButton(String val) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 100,
          width: 50,
          child: OutlinedButton(
            onPressed: () => btnClicked(val),
            child: Text(
              val,
              style: TextStyle(fontSize: 30.0, color: Colors.greenAccent),
            ),
          ),
        ),
      ),
    );
  }

  int first = 0, second = 0;
  String res = "", text = "";
  String opp = "";

  void btnClicked(String btnText) {
    if (btnText == "C") {
      res = "";
      text = "";
      first = 0;
      second = 0;
    } else if (btnText == "+" ||
        btnText == "-" ||
        btnText == "x" ||
        btnText == "/") {
      first = int.parse(text);
      res = "";
      opp = btnText;
    } else if (btnText == "=") {
      second = int.parse(text);
      if (opp == "+") {
        res = '$first $opp $second = ${(first + second).toString()}';
      }
      if (opp == "-") {
        res = '$first $opp $second = ${(first - second).toString()}';
      }
      if (opp == "x") {
        res = '$first $opp $second = ${(first * second).toString()}';
      }
      if (opp == "/") {
        res = '$first $opp $second = ${(first / second).toString()}';
      }
    } else {
      res = int.parse(text + btnText).toString();
    }
    setState(() {
      text = res;
    });
  }
}
