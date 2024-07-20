import 'package:calculator/controllers/loan_controller.dart';
import 'package:calculator/util/constants/size.dart';
import 'package:calculator/widgets/app_button.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                          max: 2000,
                          onChanged: (value) {
                            loancontroller.loanAmount.value = value;
                            loancontroller.calculateLoanDetails();
                            loancontroller.update();
                          }),
                      const SizedBox(height: AppSpace.spaceBtwElement),
                      BuildSlider(
                          symbol: "%",
                          label: "Rate of interest (p.a)",
                          value: loancontroller.interestRate.value,
                          min: 0.0,
                          max: 100,
                          onChanged: (value) {
                            loancontroller.interestRate.value = value;
                            loancontroller.calculateLoanDetails();
                            loancontroller.update();
                          }),
                      const SizedBox(height: AppSpace.spaceBtwElement),
                      BuildSlider(
                          symbolAfter: "Yr",
                          label: "Loan tenure",
                          value: loancontroller.tenure.value,
                          min: 0.0,
                          max: 100,
                          onChanged: (value) {
                            loancontroller.tenure.value = value;
                            loancontroller.calculateLoanDetails();
                            loancontroller.update();
                          }),
                      const SizedBox(height: AppSpace.spaceBtwElement),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const PlainText(
                                  text: "Monthly EMI", textSize: 15),
                              Obx(() => PlainText(
                                  text:
                                      "₦${loancontroller.monthlyEmi.value.toStringAsFixed(2)}",
                                  textSize: 15)),
                            ],
                          ),
                          const SizedBox(height: AppSpace.spaceBtwElement),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const PlainText(
                                  text: "Principal Amount", textSize: 15),
                              Obx(() => PlainText(
                                  text:
                                      "₦${loancontroller.totalPrincipal.value.toStringAsFixed(2)}",
                                  textSize: 15)),
                            ],
                          ),
                          const SizedBox(height: AppSpace.spaceBtwElement),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const PlainText(
                                  text: "Total Interest", textSize: 15),
                              Obx(() => PlainText(
                                  text:
                                      "₦${loancontroller.totalInterest.value.toStringAsFixed(2)}",
                                  textSize: 15)),
                            ],
                          ),
                          const SizedBox(height: AppSpace.spaceBtwElement),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const PlainText(
                                    text: "Total Amount", textSize: 15),
                                Obx(() => PlainText(
                                    text:
                                        "₦${loancontroller.totalAmount.value.toStringAsFixed(2)}",
                                    textSize: 15))
                              ]),
                        ],
                      ),
                    ],
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                appButton(
                  name: "Share",
                  onPressed: () {},
                  icon: const Icon(Icons.share, color: Colors.white),
                ),
                appButton(
                  name: "Save as Pdf",
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
