import 'package:calculator/util/constants/colors.dart';
import 'package:calculator/widgets/text.dart';
import 'package:flutter/material.dart';

Widget appButton({
  required final String name,
  required void Function()? onPressed,
  Icon? icon,
}) {
  return MaterialButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    height: 50.0,
    minWidth: 100.0,
    color: AppColor.primaryColor,
    onPressed: onPressed,
    elevation: 10.0,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null) ...[
          icon,
          const SizedBox(width: 5),
        ],
        BoldText(
          text: name,
          textSize: 15,
          textColor: Colors.white,
        ),
      ],
    ),
  );
}
