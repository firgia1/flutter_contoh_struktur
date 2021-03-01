library register;

import 'package:contoh_struktur/app/features/register/controllers/register_controller.dart';
import 'package:contoh_struktur/app/shared_components/buttons/button_rounded.dart';
import 'package:contoh_struktur/app/utils/ui_utils/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part '../components/card_information.dart';

class RegisterPage extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _CardInformation(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller.email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: "email"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller.password,
              obscureText: true,
              decoration: InputDecoration(hintText: "password"),
            ),
          ),
          UIUtils.cardInputRequired,
          ButtonRounded(
              onPressed: () => controller.register(), child: Text("register"))
        ],
      ),
    );
  }
}
