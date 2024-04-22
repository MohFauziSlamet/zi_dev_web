import 'package:flutter/material.dart';
import 'package:zi_dev_web/sections/about_section/about.dart';
import 'package:zi_dev_web/sections/contact_section/contact.dart';
import 'package:zi_dev_web/sections/home_section/home.dart';
import 'package:zi_dev_web/widget/footer.dart';

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    // Services(),
    // Portfolio(),
    Contact(),
    Footer(),
  ];
}
