import 'package:contoh_struktur/app/config/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _totalRegister = 0.obs;

  void increaseTotalRegister() {
    _totalRegister.value++;
  }

  int get totalRegister => _totalRegister.value;

  void goToRegister() {
    Get.toNamed(Routes.REGISTER);
    increaseTotalRegister();
  }
}
