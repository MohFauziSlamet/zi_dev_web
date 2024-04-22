import 'package:flutter/material.dart';
import 'package:zi_dev_web/responsive/responsive.dart';
import 'package:zi_dev_web/sections/home_section/home_desktop.dart';
import 'package:zi_dev_web/sections/home_section/home_mobile.dart';
import 'package:zi_dev_web/sections/home_section/home_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomeMobile(),
      tablet: HomeTab(),
      desktop: HomeDesktop(),
    );
  }
}
