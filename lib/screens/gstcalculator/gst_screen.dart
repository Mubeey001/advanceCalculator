import 'package:calculator/controllers/gst_controller.dart';
import 'package:calculator/util/constants/size.dart';
import 'package:calculator/util/validator.dart';
import 'package:calculator/widgets/build_from_field.dart';
import 'package:calculator/widgets/calculate_button.dart';
import 'package:calculator/widgets/custom_app_bar.dart';
import 'package:calculator/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GstScreen extends StatefulWidget {
  const GstScreen({super.key});

  @override
  State<GstScreen> createState() => _GstScreenState();
}

final GlobalKey<FormState> _formKey = GlobalKey();

class _GstScreenState extends State<GstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: BoldText(
              text: "GST Calculator",
              textSize: 23.0,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: GetBuilder<GstController>(
                init: GstController(),
                builder: (gstcontroller) {
                  return Form(
                    autovalidateMode: AutovalidateMode.always,
                    key: _formKey,
                    child: Column(
                      children: [
                        BuildFormField(
                          label: "Original Amount",
                          onChanged: (value) {
                            gstcontroller.originalAmount.value =
                                double.tryParse(value) ?? 0.0;
                          },
                          validate: (value) => InputValidator.validateNumber(
                              value, "Original Amount"),
                        ),
                        const SizedBox(height: AppSpace.spaceBtwElement),
                        BuildFormField(
                          label: "GST Rate",
                          onChanged: (value) {
                            gstcontroller.gstRate.value =
                                double.tryParse(value) ?? 0.0;
                          },
                          validate: (value) =>
                              InputValidator.validateNumber(value, "GST Rate"),
                        ),
                        const SizedBox(height: AppSpace.spaceBtwElement),
                        calculateButton(
                          name: "Calculate GST",
                          onPressed: () {
                            if (_formKey.currentState!.validate() == true) {
                              gstcontroller.calculateGst();
                            }
                          },
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
