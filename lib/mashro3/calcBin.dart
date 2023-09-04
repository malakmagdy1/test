import 'package:flutter/material.dart';

class CalcBin extends StatefulWidget {
  @override
  State<CalcBin> createState() => _CalcBinState();
}

class _CalcBinState extends State<CalcBin> {
  String binaryNumber1 = "";
  String binaryNumber2 = "";
  String operator = "";
  String result = "";

  void updateBinaryNumber(String digit) {
    setState(() {
      if (operator.isEmpty) {
        binaryNumber1 += digit;
      } else {
        binaryNumber2 += digit;
      }
    });
  }

  void clear() {
    setState(() {
      binaryNumber1 = "";
      binaryNumber2 = "";
      operator = "";
      result = "";
    });
  }

  void delete() {
    setState(() {
      if (operator.isEmpty) {
        if (binaryNumber1.isNotEmpty) {
          binaryNumber1 = binaryNumber1.substring(0, binaryNumber1.length - 1);
        }
      } else {
        if (binaryNumber2.isNotEmpty) {
          binaryNumber2 = binaryNumber2.substring(0, binaryNumber2.length - 1);
        }
      }
    });
  }

  void calculateResult() {
    if (binaryNumber1.isNotEmpty &&
        binaryNumber2.isNotEmpty &&
        operator.isNotEmpty) {
      int? decimalNumber1 = int.tryParse(binaryNumber1);
      int? decimalNumber2 = int.tryParse(binaryNumber2);
      if (decimalNumber1 != null && decimalNumber2 != null) {
        int decimalResult = operator == "+"
            ? decimalNumber1 + decimalNumber2
            : decimalNumber1 - decimalNumber2;
        setState(() {
          result = (decimalResult
                  .toUnsigned(32) //convert number to decimal 32 bit
                  .toRadixString(2))
              . // convert to binary
              padLeft(32, '0');
        });
      }
    }
  }

  Widget buildBinaryNumber(String binaryNumber) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Text(
          binaryNumber.isEmpty ? "0" : binaryNumber,
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }

  Widget buildResult() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Text(
          result,
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }

  Widget buildButton(String label, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 80,
        height: 80,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(20),
            backgroundColor: Colors.blue,
          ),
          child: Text(
            label,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Binary Calculator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildBinaryNumber(binaryNumber1),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildButton("0", () => updateBinaryNumber("0")),
                buildButton("1", () => updateBinaryNumber("1")),
                buildButton("+", () {
                  operator = "+";
                }),
                buildButton("-", () {
                  operator = "-";
                }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildButton("=", () {
                  calculateResult();
                }),
                buildButton("C", () {
                  clear();
                }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildResult(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
