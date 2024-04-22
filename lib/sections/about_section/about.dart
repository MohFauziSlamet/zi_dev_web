import 'package:flutter/material.dart';
import 'package:zi_dev_web/responsive/responsive.dart';
import 'package:zi_dev_web/sections/about_section/about_desktop.dart';
import 'package:zi_dev_web/sections/about_section/about_mobile.dart';
import 'package:zi_dev_web/sections/about_section/about_tablet.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      tablet: AboutTab(),
      mobile: AboutMobile(),
      desktop: AboutDesktop(),
    );
  }
}
