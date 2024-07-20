import 'package:get/get.dart';
import 'dart:math' as math;

class LoanController extends GetxController {
  var loanAmount = 0.0.obs;
  var interestRate = 0.0.obs;
  var tenure = 0.0.obs;
  var monthlyEmi = 0.0.obs;
  var totalPrincipal = 0.0.obs;
  var totalInterest = 0.0.obs;
  var totalAmount = 0.0.obs;

  void calculateLoanDetails() {
    double principal = loanAmount.value;
    double annualRate = interestRate.value / 100;
    int months = (tenure.value * 12).toInt();

    //Case where any value is zero
    if (principal == 0 || annualRate == 0 || months == 0) {
      monthlyEmi.value = 0;
      totalPrincipal.value = 0;
      totalInterest.value = 0;
      totalAmount.value = 0;
    } else {
      // Calculate monthly interest rate
      double monthlyRate = annualRate / 12;

      double numerator =
          principal * monthlyRate * math.pow(1 + monthlyRate, months);
      double denominator = math.pow(1 + monthlyRate, months) - 1;
      double monthlyPayment = numerator / denominator;

      // Calculate total interest paid and total amount
      double totalInterestPaid = (monthlyPayment * months) - principal;
      double totalAmountPaid = principal + totalInterestPaid;

      // Update observable variables
      monthlyEmi.value = monthlyPayment;
      totalPrincipal.value = principal;
      totalInterest.value = totalInterestPaid;
      totalAmount.value = totalAmountPaid;
    }

    update();
  }
}
