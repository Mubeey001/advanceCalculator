import 'package:calculator/data/calculator_model.dart';
import 'package:calculator/data/list_of_calculators.dart';
import 'package:calculator/util/constants/text.dart';
import 'package:calculator/widgets/custom_app_bar.dart';
import 'package:calculator/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: BoldText(
              text: AppText.appName,
              textSize: 23.0,
            ),
          ),
          Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: calculators.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.7),
                itemBuilder: (ctx, index) {
                  final CalculatorModel calculator = calculators[index];
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(calculator.route);
                    },
                    child: Card(
                      elevation: 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            calculator.icon,
                            height: 50.0,
                            width: 50.0,
                          ),
                          const SizedBox(height: 5.0),
                          PlainText(
                            text: calculator.name,
                            textSize: 10.0,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
