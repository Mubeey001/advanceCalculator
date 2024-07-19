class InputValidator {
  static String? validateNumber(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return "$fieldName is required";
    }
    if (double.tryParse(value) == null) {
      return "$fieldName must be a valid number";
    }
    return null;
  }
}
