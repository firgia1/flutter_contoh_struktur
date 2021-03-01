import 'package:get/get.dart';

abstract class AppDialogs {
  static void showConfirmRegistration(Function onRegistration) {
    Get.defaultDialog(
        title: "konfirmasi registrasi",
        middleText:
            "pastikan semua sudah di isi dengan sesuai, lanjut mendaftar ?",
        textConfirm: "daftar",
        textCancel: "batal",
        onConfirm: () {
          Get.back();
          onRegistration();
        });
  }

  static void showRegistrationSuccess() {
    Get.defaultDialog(
        title: "pendaftaran berhasil",
        middleText: "pendaftaran sudah di terima",
        textConfirm: "daftar",
        textCancel: "batal",
        onConfirm: () => Get.back());
  }
}
