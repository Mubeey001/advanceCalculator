import 'package:flutter/material.dart';

class PlainText extends StatelessWidget {
  const PlainText(
      {super.key, required this.text, required this.textSize, this.textAlign});
  final String text;
  final double textSize;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: textSize,
      ),
      textAlign: textAlign,
    );
  }
}

class BoldText extends StatelessWidget {
  const BoldText({super.key, required this.text, required this.textSize});
  final String text;
  final double textSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: textSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
