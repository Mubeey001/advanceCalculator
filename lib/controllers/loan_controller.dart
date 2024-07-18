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

    Get.snackbar(
        'Loan Calculation Result',
        'Monthly EMI: \$${monthlyPayment.toStringAsFixed(2)}\n'
            'Total Principal Amount: \$${principal.toStringAsFixed(2)}\n'
            'Total Interest Paid: \$${totalInterestPaid.toStringAsFixed(2)}\n'
            'Total Amount to be Paid: \$${totalAmountPaid.toStringAsFixed(2)}');
  }
}
