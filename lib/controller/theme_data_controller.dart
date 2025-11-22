import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zi_dev_web/configs/app_dimensions.dart';

final themeMap = {
  "dark": ThemeMode.dark,
  "light": ThemeMode.light,
};

class HomeController extends GetxController {
  final scafoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get key => scafoldKey;

  ThemeMode _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;

  bool get isDark => _themeMode == ThemeMode.dark;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();

    String? stringTheme = prefs.getString('theme');

    ThemeMode? theme = stringTheme == null ? ThemeMode.light : themeMap[stringTheme];

    if (theme == null) {
      await prefs.setString('theme', ThemeMode.light.toString().split(".").last);
      _themeMode = ThemeMode.light;
    } else {
      _themeMode = theme;
    }

    update();
  }

  Future<void> setTheme(ThemeMode newTheme) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (_themeMode == newTheme) {
      return;
    }
    _themeMode = newTheme;

    await prefs.setString(
      'theme',
      newTheme.toString().split('.').last,
    );
    update();
  }

  final scrollController = ScrollController();

  ScrollController get controller => scrollController;

  scroll(int index) {
    double offset = index == 1
        ? 350
        : index == 2
            ? 265
            : index == 3
                ? 260
                : 200;
    controller.animateTo(
      AppDimensions.normalize(
        offset * index.toDouble(),
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  scrollMobile(int index) {
    double offset = index == 1
        ? 290
        : index == 2
            ? 360
            : index == 3
                ? 300
                : 310;
    controller.animateTo(
      AppDimensions.normalize(
        offset * index.toDouble(),
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
