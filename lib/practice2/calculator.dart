import 'package:flutter/material.dart';
import 'package:untitled3/practice2/calc_btn.dart';

class CalcullatorScreen extends StatefulWidget {
  //to make number appear on screen
  static const String routeName = "Calc";

  CalcullatorScreen({super.key});

  @override
  State<CalcullatorScreen> createState() => CalcullatorScreenState();
}

class CalcullatorScreenState extends State<CalcullatorScreen> {
  String result = "";

  //changed number
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
                alignment: Alignment.center,
                child: Text(
                  result,
                  style: TextStyle(fontSize: (20)),
                )),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalcBtn(number: '1', onBtnClick: onBtnClick),
                CalcBtn(number: '2', onBtnClick: onBtnClick),
                CalcBtn(number: '3', onBtnClick: onBtnClick),
                CalcBtn(number: '+', onBtnClick: onBtnClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalcBtn(number: '4', onBtnClick: onBtnClick),
                CalcBtn(number: '5', onBtnClick: onBtnClick),
                CalcBtn(number: '6', onBtnClick: onBtnClick),
                CalcBtn(number: '-', onBtnClick: onBtnClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalcBtn(number: '7', onBtnClick: onBtnClick),
                CalcBtn(number: '8', onBtnClick: onBtnClick),
                CalcBtn(number: '9', onBtnClick: onBtnClick),
                CalcBtn(number: '*', onBtnClick: onBtnClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalcBtn(number: '.', onBtnClick: onBtnClick),
                CalcBtn(number: '/', onBtnClick: onBtnClick),
                CalcBtn(number: '0', onBtnClick: onBtnClick),
                CalcBtn(number: '=', onBtnClick: onBtnClick),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String lhs = "";
  String operator = "";

  String Calculat(String lhs, String op, String rhs) {
    double ls = double.parse(lhs);
    double rs = double.parse(rhs);
    if (op == '+') {
      return (ls + rs).toString();
    } else if (op == '-') {
      return (ls - rs).toString();
    } else if (op == '/') {
      return (ls / rs).toString();
    } else if (op == '*') {
      return (ls * rs).toString();
    } else {
      return " ";
    }
  }

  onEqual(value) {
    String rhs = result;
    String res = Calculat(lhs, operator, rhs);
    result = res;
    operator = value;
    lhs = "";
    setState(() {});
  }

  onOperatorClick(number) {
    //function to clear screen when + -* / =
    if (operator.isEmpty) {
      lhs = result;
    } else {
      String rhs = result;
      String res = Calculat(lhs, operator, rhs);
      lhs = res;
      print(res);
    }
    operator = number;
    result = "";
    setState(() {});
  }

  onBtnClick(number) {
    if (operator == '=') {
      result = "";
      operator = "";
    }
    result +=
        number; //function to put number beside each other bec. i added it in constructor so i must wrote it in each botton
    setState(() {});
  }
}
