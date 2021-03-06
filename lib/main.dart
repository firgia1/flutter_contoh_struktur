import 'package:contoh_struktur/app/config/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Contoh Struktur',
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
