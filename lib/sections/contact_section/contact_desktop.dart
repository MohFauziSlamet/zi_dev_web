import 'package:flutter/material.dart';
import 'package:zi_dev_web/animations/bottom_animation.dart';
import 'package:zi_dev_web/configs/app_dimensions.dart';
import 'package:zi_dev_web/configs/space.dart';
import 'package:zi_dev_web/utils/contact_utils.dart';
import 'package:zi_dev_web/widget/custom_text_heading.dart';
import 'package:zi_dev_web/widget/project_card.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.all(1, 1),
      child: Column(
        children: [
          const CustomSectionHeading(
            text: "\nGet in Touch",
          ),
          const CustomSectionSubHeading(
            text: "Let's build something together :)\n\n",
          ),
          Space.y!,
          Wrap(
            alignment: WrapAlignment.center,
            runSpacing: AppDimensions.normalize(10),
            children: ContactUtils.contactIcon
                .asMap()
                .entries
                .map(
                  (e) => WidgetAnimator(
                    child: ProjectCard(
                      projectIconData: e.value,
                      projectTitle: ContactUtils.titles[e.key],
                      projectDescription: ContactUtils.details[e.key],
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
