import 'package:get/get.dart';

abstract class AppSnackbars {
  static void showInputRequired() {
    Get.snackbar("Input Required", "pastikan input di isi dengan sesuai",
        snackPosition: SnackPosition.BOTTOM);
  }

  static void showEmailInvalid() {
    Get.snackbar("Email Invalid", "email tidak valid",
        snackPosition: SnackPosition.BOTTOM);
  }
}
