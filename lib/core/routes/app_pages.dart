import 'package:get/get.dart';
import 'package:zi_dev_web/core/bindings/initial_binding.dart';
import 'package:zi_dev_web/core/routes/app_routes.dart';
import 'package:zi_dev_web/sections/main_section/main_section.dart';

class AppPages {
  static const initial = AppRoutes.home;

  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => const MainPage(),
      binding: InitialBinding(),
    ),
  ];
}
