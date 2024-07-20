import 'package:calculator/util/constants/colors.dart';
import 'package:flutter/material.dart';

class BuildSlider extends StatelessWidget {
  final String label;
  final double value;
  final double min;
  final double max;
  final Function(double) onChanged;
  final String? symbol, symbolAfter;

  const BuildSlider({
    super.key,
    required this.label,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
    this.symbol = "",
    this.symbolAfter = "",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label),
            Text(
              '$symbol ${value.toStringAsFixed(1)} $symbolAfter',
              style: const TextStyle(
                  color: AppColor.primaryColor,
                  backgroundColor: AppColor.backgroundColor,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Slider(
          value: value,
          min: min,
          max: max,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
