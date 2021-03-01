import 'package:contoh_struktur/app/utils/ui_utils/app_dialogs.dart';
import 'package:contoh_struktur/app/utils/ui_utils/app_snackbars.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void register() {
    if (email.text.isEmpty || password.text.isEmpty) {
      AppSnackbars.showInputRequired();
    } else {
      if (!GetUtils.isEmail(email.text)) {
        AppSnackbars.showEmailInvalid();
      } else {
        AppDialogs.showConfirmRegistration(() {
          AppDialogs.showRegistrationSuccess();
          email.text = "";
          password.text = "";
        });
      }
    }
  }
}
