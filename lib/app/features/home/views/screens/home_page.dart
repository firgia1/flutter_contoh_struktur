library home;

import 'package:contoh_struktur/app/features/home/controllers/home_controller.dart';
import 'package:contoh_struktur/app/shared_components/buttons/button_rounded.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
part '../components/card_profile.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          _CardProfile(),
          SizedBox(height: 20),
          ButtonRounded(
              onPressed: () => controller.goToRegister(),
              child: Text("register")),
          Obx(() => Text("total clik register : ${controller.totalRegister}")),
        ],
      ),
    );
  }
}
