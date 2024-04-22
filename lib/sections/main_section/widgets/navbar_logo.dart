import 'package:flutter/material.dart';
import 'package:zi_dev_web/configs/app_theme.dart';
import 'package:zi_dev_web/configs/app_typography.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "< ",
          style: AppText.b1!.copyWith(
            color: AppTheme.c!.text!,
          ),
        ),
        Text(
          "zi_dev",
          style: AppText.b1b!.copyWith(
            fontFamily: 'Montserrat',
            color: AppTheme.c!.text!,
          ),
        ),
        Text(
          MediaQuery.of(context).size.width >= 1000 ? " />\t\t" : " />",
          style: AppText.b1!.copyWith(
            color: AppTheme.c!.text!,
          ),
        )
      ],
    );
  }
}
