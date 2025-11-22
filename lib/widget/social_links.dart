import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zi_dev_web/configs/configs.dart';
import 'package:zi_dev_web/constants.dart';
import 'package:zi_dev_web/controller/theme_data_controller.dart';
import 'package:zi_dev_web/responsive/responsive.dart';
import 'package:zi_dev_web/utils/utils.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Wrap(
      runSpacing: AppDimensions.normalize(10),
      alignment: WrapAlignment.center,
      children: StaticUtils.socialIconURL
          .asMap()
          .entries
          .map(
            (e) => Padding(
              padding: Responsive.isMobile(context) ? Space.all(0.2, 0) : Space.h!,
              child: SizedBox(
                height: AppDimensions.normalize(20),
                width: AppDimensions.normalize(20),
                child: IconButton(
                  highlightColor: Colors.white54,
                  splashRadius: AppDimensions.normalize(12),
                  icon: Image.network(
                    e.value,
                    color: controller.isDark ? Colors.white : Colors.black,
                    height: Responsive.isMobile(context) ? AppDimensions.normalize(10) : null,
                  ),
                  // iconSize: AppDimensions.normalize(10),

                  // iconSize: Responsive.isMobile(context)
                  //     ? AppDimensions.normalize(10)
                  //     : AppDimensions.normalize(15),
                  onPressed: () => openURL(
                    StaticUtils.socialLinks[e.key],
                  ),
                  hoverColor: AppTheme.c!.primary!,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
