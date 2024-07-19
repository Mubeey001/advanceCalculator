import 'package:calculator/util/constants/colors.dart';
import 'package:flutter/material.dart';

class BuildFormField extends StatelessWidget {
  final String label;
  final void Function(String) onChanged;
  final String? Function(String?)? validate;

  const BuildFormField({
    super.key,
    required this.label,
    required this.onChanged,
    this.validate,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.primaryColor),
        ),
        labelText: label,
      ),
      keyboardType: TextInputType.number,
      onChanged: onChanged,
      validator: validate,
    );
  }
}
