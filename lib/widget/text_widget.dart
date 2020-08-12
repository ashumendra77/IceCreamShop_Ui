import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getText(String amount, String weight, String pro) {
  return RichText(
    // textAlign: TextAlign.center,
    text: TextSpan(
      text: amount,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Color(0xfff14e58), fontSize: 32),
      children: <TextSpan>[
        TextSpan(
            text: weight,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
        TextSpan(
            text: ' \n' + pro,
            style: TextStyle(color: Colors.grey, fontSize: 12)),
      ],
    ),
  );
}
