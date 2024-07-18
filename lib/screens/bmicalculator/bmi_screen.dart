import 'package:calculator/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Form(
            child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(),
            )
          ],
        )),
      ),
    );
  }
}
