import 'package:calculator/util/constants/colors.dart';
import 'package:calculator/widgets/text.dart';
import 'package:flutter/material.dart';

Widget calculateButton({
  required final String name,
  required void Function()? onPressed,
}) {
  return MaterialButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    height: 50.0,
    minWidth: 100.0,
    color: AppColor.primaryColor,
    onPressed: onPressed,
    child: BoldText(
      text: name,
      textSize: 15,
      textColor: Colors.white,
    ),
    elevation: 10.0,
  );
}
