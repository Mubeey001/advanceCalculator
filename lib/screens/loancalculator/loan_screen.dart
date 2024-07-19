import 'package:calculator/controllers/loan_controller.dart';
import 'package:calculator/widgets/custom_app_bar.dart';
import 'package:calculator/widgets/slider_widget.dart';
import 'package:calculator/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoanScreen extends StatefulWidget {
  const LoanScreen({super.key});

  @override
  State<LoanScreen> createState() => _LoanScreenState();
}

class _LoanScreenState extends State<LoanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
              padding: EdgeInsets.all(10.0),
              child: BoldText(text: "Loan Calculator", textSize: 23.0)),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: GetBuilder<LoanController>(
                init: LoanController(),
                builder: (loancontroller) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BuildSlider(
                          symbol: "₦",
                          label: "Loan amount",
                          value: loancontroller.loanAmount.value,
                          min: 0.0,
                          max: 100,
                          onChanged: (value) {
                            loancontroller.loanAmount.value = value;
                            loancontroller.update();
                          }),
                      BuildSlider(
                          symbol: "%",
                          label: "Rate of interest (p.a)",
                          value: loancontroller.interestRate.value,
                          min: 0.0,
                          max: 100,
                          onChanged: (value) {
                            loancontroller.interestRate.value = value;
                            loancontroller.update();
                          }),
                      BuildSlider(
                          symbolAfter: "Yr",
                          label: "Loan tenure",
                          value: loancontroller.tenure.value,
                          min: 0.0,
                          max: 100,
                          onChanged: (value) {
                            loancontroller.tenure.value = value;
                            loancontroller.update();
                          }),
                    ],
                  );
                }),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PlainText(text: "Monthly EMI", textSize: 20),
                    PlainText(text: "Principla Amount", textSize: 20),
                    PlainText(text: "Total Interest", textSize: 20),
                    PlainText(text: "Total Amount", textSize: 20),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PlainText(text: "text", textSize: 20),
                    PlainText(text: "text", textSize: 20),
                    PlainText(text: "text", textSize: 20),
                    PlainText(text: "text", textSize: 20),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
