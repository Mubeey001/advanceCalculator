import 'package:calculator/controllers/bmi_controller.dart';
import 'package:calculator/controllers/gst_controller.dart';
import 'package:calculator/controllers/loan_controller.dart';
import 'package:get/get.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BmiController());
    Get.lazyPut(() => LoanController());
    Get.lazyPut(() => GstController());
  }
}
