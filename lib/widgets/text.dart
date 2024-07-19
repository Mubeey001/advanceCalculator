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
  const BoldText(
      {super.key, required this.text, required this.textSize, this.textColor});
  final String text;
  final double textSize;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: textSize,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
