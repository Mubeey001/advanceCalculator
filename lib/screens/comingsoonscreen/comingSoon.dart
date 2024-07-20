import 'package:calculator/widgets/custom_app_bar.dart';
import 'package:calculator/widgets/text.dart';
import 'package:flutter/material.dart';

class ComingsoonScreen extends StatelessWidget {
  const ComingsoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: PlainText(
          text: "Coming soon...",
          textSize: 20.0,
        ),
      ),
    );
  }
}
