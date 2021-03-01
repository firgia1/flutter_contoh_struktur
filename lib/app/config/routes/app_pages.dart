import 'package:contoh_struktur/app/features/home/bindings/home_binding.dart';
import 'package:contoh_struktur/app/features/home/views/screens/home_page.dart';
import 'package:contoh_struktur/app/features/register/bindings/register_binding.dart';
import 'package:contoh_struktur/app/features/register/views/screens/register_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
    )
  ];
}
