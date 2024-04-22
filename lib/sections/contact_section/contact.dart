import 'package:flutter/material.dart';
import 'package:zi_dev_web/responsive/responsive.dart';
import 'package:zi_dev_web/sections/contact_section/contact_desktop.dart';
import 'package:zi_dev_web/sections/contact_section/contact_mobile.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ContactMobileTab(),
      tablet: ContactMobileTab(),
      desktop: ContactDesktop(),
    );
  }
}
