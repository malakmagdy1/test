import 'package:flutter/material.dart';

class Convert extends StatefulWidget {
  State<Convert> createState() => _ConvertState();
}

class _ConvertState extends State<Convert> {
  String result = "";
  String val = "";
  double first = 0;
  bool isConvertClicked = false;

  void btnClick(String text) {
    setState(() {
      if (text == 'Km to m') {
        first = 1000;
      } else if (text == 'm to cm') {
        first = 100;
      } else if (text == 'cm to mm') {
        first = 10;
      } else if (text == 'mm to km') {
        first = 0.000001;
      } else if (text == '1') {
        val += '1';
      } else if (text == '2') {
        val += '2';
      } else if (text == '3') {
        val += '3';
      } else if (text == '4') {
        val += '4';
      } else if (text == '5') {
        val += '5';
      } else if (text == '6') {
        val += '6';
      } else if (text == '7') {
        val += '7';
      } else if (text == '8') {
        val += '8';
      } else if (text == '9') {
        val += '9';
      } else if (text == 'delete') {
        if (val.isNotEmpty) {
          if (val.length == 1) {
            val = "0";
          } else {
            val = val.substring(0, val.length - 1);
          }
        }
      } else if (text == 'convert') {
        isConvertClicked = true;
        result = (double.parse(val) * first).toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Unit Converter",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: (20)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (isConvertClicked)
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                result,
                style: TextStyle(fontSize: 32, color: Colors.white70),
              ),
            ),
          Row(
            children: [
              customOutlineButton("Km to m"),
              customOutlineButton("m to cm"),
              customOutlineButton("cm to mm"),
              customOutlineButton("mm to km")
            ],
          ),
          Row(
            children: [
              customOutlineButton("1"),
              customOutlineButton("2"),
              customOutlineButton("3"),
              customOutlineButton("4")
            ],
          ),
          Row(
            children: [
              customOutlineButton("5"),
              customOutlineButton("6"),
              customOutlineButton("7"),
              customOutlineButton("8")
            ],
          ),
          Row(
            children: [
              customOutlineButton("9"),
              customOutlineButton("delete"),
              customOutlineButton("convert")
            ],
          ),
        ],
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
            onPressed: () => btnClick(val),
            //style: OutlinedButton.styleFrom(
            //backgroundColor: Colors.blue,),
            child: Text(
              val,
              style: TextStyle(fontSize: 23.0, color: Colors.lime),
            ),
          ),
        ),
      ),
    );
  }
}
