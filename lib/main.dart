import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:zi_dev_web/configs/core_theme.dart' as theme;
import 'package:zi_dev_web/controller/theme_data_controller.dart';
import 'package:zi_dev_web/core/bindings/initial_binding.dart';
import 'package:zi_dev_web/core/routes/app_pages.dart';

void main() async {
  // Ensure Flutter binding is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Remove # from URL for web
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      global: true,
      builder: (controller) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Moh Fauzi Slamet - Portfolio',
          theme: theme.themeLight,
          darkTheme: theme.themeDark,
          themeMode: controller.themeMode,
          initialBinding: InitialBinding(),
          initialRoute: AppPages.initial,
          getPages: AppPages.routes,
          defaultTransition: Transition.fade,
        );
      },
    );
  }
}
