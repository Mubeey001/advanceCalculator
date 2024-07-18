import 'package:get/get.dart';

class BmiController extends GetxController {
  var height = 0.0.obs;
  var weight = 0.0.obs;
  var bmiResult = 0.0.obs;

  void calculateBmi() {
    if (height.value > 0 && weight.value > 0) {
      double bmi = weight.value / (height.value * height.value);
      bmiResult.value = bmi;
      Get.snackbar('BMI Result', 'Your BMI is ${bmi.toStringAsFixed(2)}');
    }
  }
}
