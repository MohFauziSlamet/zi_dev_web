import 'package:flutter/material.dart';
import 'package:zi_dev_web/responsive/responsive.dart';
import 'package:zi_dev_web/sections/portfolio_section/portfolio_desktop.dart';
import 'package:zi_dev_web/sections/portfolio_section/portfolio_mobile.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: PortfolioMobileTab(),
      tablet: PortfolioMobileTab(),
      desktop: PortfolioDesktop(),
    );
  }
}
