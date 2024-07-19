import 'package:calculator/controllers/bmi_controller.dart';
import 'package:calculator/util/constants/size.dart';
import 'package:calculator/util/validator.dart';
import 'package:calculator/widgets/build_from_field.dart';
import 'package:calculator/widgets/calculate_button.dart';
import 'package:calculator/widgets/custom_app_bar.dart';
import 'package:calculator/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: BoldText(
              text: "BMI Calculator",
              textSize: 23.0,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: GetBuilder<BmiController>(
              init: BmiController(),
              builder: (bmicontroller) {
                return Form(
                  autovalidateMode: AutovalidateMode.always,
                  key: _formKey,
                  child: Column(
                    children: [
                      BuildFormField(
                        label: 'Height in meter',
                        onChanged: (value) {
                          bmicontroller.height.value =
                              double.tryParse(value) ?? 0.0;
                        },
                        validate: (value) => InputValidator.validateNumber(
                            value, "Height in meter"),
                      ),
                      const SizedBox(height: AppSpace.spaceBtwElement),
                      BuildFormField(
                        label: 'Weight in kg',
                        onChanged: (value) {
                          bmicontroller.weight.value =
                              double.tryParse(value) ?? 0.0;
                        },
                        validate: (value) => InputValidator.validateNumber(
                            value, "Weight in kg"),
                      ),
                      const SizedBox(height: AppSpace.spaceBtwElement),
                      calculateButton(
                          name: "Calculate BMI",
                          onPressed: () {
                            if (_formKey.currentState!.validate() == true) {
                              bmicontroller.calculateBmi();
                            }
                          })
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
