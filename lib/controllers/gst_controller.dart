import 'package:get/get.dart';

class GstController extends GetxController {
  var originalAmount = 0.0.obs;
  var gstRate = 0.0.obs;
  var gstAmount = 0.0.obs;
  var totalAmount = 0.0.obs;

  void calculateGst() {
    double calculatedGst = (originalAmount.value * gstRate.value) / 100;

    double totalWithGst = originalAmount.value + calculatedGst;

    gstAmount.value = calculatedGst;
    totalAmount.value = totalWithGst;

    Get.snackbar(
        'GST Calculation Result',
        'Original Amount: \$${originalAmount.value.toStringAsFixed(2)}\n'
            'GST Rate: ${gstRate.value.toStringAsFixed(2)}%\n'
            'GST Amount: \$${calculatedGst.toStringAsFixed(2)}\n'
            'Total Amount: \$${totalWithGst.toStringAsFixed(2)}');
  }
}
