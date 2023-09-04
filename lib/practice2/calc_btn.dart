import 'package:flutter/material.dart';

class CalcBtn extends StatelessWidget {
  String number;
  late Function onBtnClick; //declaration of function that will accept number
  CalcBtn({
    required this.number,
    required this.onBtnClick,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Expanded(
        child: ElevatedButton(
            onPressed: () {
              onBtnClick(number);
            },
            child: Text(
              number,
              style: TextStyle(fontSize: (20)),
            )),
      ),
    );
  }
}
