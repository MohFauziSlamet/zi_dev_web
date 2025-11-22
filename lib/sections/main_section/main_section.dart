import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:universal_html/html.dart' as html;
import 'package:zi_dev_web/animations/entrance_fader.dart';
import 'package:zi_dev_web/configs/app.dart';
import 'package:zi_dev_web/configs/app_dimensions.dart';
import 'package:zi_dev_web/configs/app_theme.dart';
import 'package:zi_dev_web/configs/app_typography.dart';
import 'package:zi_dev_web/configs/space.dart';
import 'package:zi_dev_web/constants.dart';
import 'package:zi_dev_web/controller/theme_data_controller.dart';
import 'package:zi_dev_web/responsive/responsive.dart';
import 'package:zi_dev_web/sections/main_section/constan/body_const.dart';
import 'package:zi_dev_web/sections/main_section/widgets/navbar_logo.dart';
import 'package:zi_dev_web/utils/navbar_utils.dart';
import 'package:zi_dev_web/utils/utils.dart';
import 'package:zi_dev_web/widget/arrow_on_top.dart';
import 'package:zi_dev_web/widget/navbar_actions_button.dart';

part 'widgets/_body.dart';
part 'widgets/_mobile_drawer.dart';
part 'widgets/_navbar_desktop.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final controller = Get.find<HomeController>();

    return Scaffold(
      key: controller.key,
      extendBodyBehindAppBar: true,
      drawer: !Responsive.isDesktop(context) ? const _MobileDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: Responsive.isTablet(context) || Responsive.isMobile(context)
                    ? AppDimensions.normalize(25)
                    : AppDimensions.normalize(30),
              ),
              child: const _Body(),
            ),
            const ArrowOnTop(),
            Responsive.isTablet(context) || Responsive.isMobile(context)
                ? const _NavBarTablet()
                : const _NavbarDesktop(),
          ],
        ),
      ),
    );
  }
}
