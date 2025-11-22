import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;
import 'package:zi_dev_web/animations/entrance_fader.dart';
import 'package:zi_dev_web/configs/app_dimensions.dart';
import 'package:zi_dev_web/configs/app_theme.dart';
import 'package:zi_dev_web/configs/app_typography.dart';
import 'package:zi_dev_web/configs/space.dart';
import 'package:zi_dev_web/constants.dart';
import 'package:zi_dev_web/utils/about_utils.dart';
import 'package:zi_dev_web/utils/utils.dart';
import 'package:zi_dev_web/utils/work_utils.dart';
import 'package:zi_dev_web/widget/about_me_data.dart';
import 'package:zi_dev_web/widget/community_button.dart';
import 'package:zi_dev_web/widget/custom_text_heading.dart';
import 'package:zi_dev_web/widget/tech_widget.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: Space.h,
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\nAbout Me',
          ),
          const CustomSectionSubHeading(
            text: 'Get to know me :)',
          ),
          Space.y1!,
          Row(
            children: [
              Expanded(
                child: Opacity(
                  opacity: 0.9,
                  child: EntranceFader(
                    offset: const Offset(0, 0),
                    delay: const Duration(seconds: 1),
                    duration: const Duration(milliseconds: 800),
                    child: Image.asset(
                      StaticUtils.blackWhitePhoto,
                      height: size.height * 0.7,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: AppDimensions.normalize(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Who am I?',
                        style: AppText.b1!.copyWith(
                          color: AppTheme.c!.primary,
                        ),
                      ),
                      Space.y1!,
                      Text(
                        AboutUtils.aboutMeHeadline,
                        style: AppText.b1b!.copyWith(
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      Space.y!,
                      Text(
                        AboutUtils.aboutMeDetail,
                        style: AppText.b2!.copyWith(
                          height: 2,
                          letterSpacing: 1.1,
                          fontFamily: 'Montserrat',
                          fontSize: AppDimensions.normalize(5),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Space.y!,
                      Divider(
                        color: Colors.grey[800],
                        thickness: AppDimensions.normalize(0.5),
                      ),
                      Space.y!,
                      Text(
                        'Tools and technology that I have used:',
                        style: AppText.l1!.copyWith(
                          color: AppTheme.c!.primary,
                        ),
                      ),
                      Space.y!,
                      GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 5.5,
                          crossAxisCount: 4,
                          mainAxisSpacing: 6,
                          crossAxisSpacing: 6,
                        ),
                        itemCount: kTools.length,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          var e = kTools[index];
                          return ToolTechWidget(techName: e);
                        },
                      ),
                      Space.y!,
                      Divider(
                        color: Colors.grey[800],
                        thickness: AppDimensions.normalize(0.5),
                      ),
                      const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AboutMeData(
                                data: "Name",
                                information: "Moh Fauzi Slamet",
                              ),
                              AboutMeData(
                                data: "Age",
                                information: "28",
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AboutMeData(
                                data: "Email",
                                information: "mohammadfauzislamet@gmail.com",
                              ),
                              AboutMeData(
                                data: "From",
                                information: "Malang , Indonesia",
                              ),
                            ],
                          ),
                        ],
                      ),
                      Space.y1!,
                      Row(
                        children: [
                          SizedBox(
                            height: AppDimensions.normalize(13),
                            width: AppDimensions.normalize(40),
                            child: OutlinedButton(
                              onPressed: () =>
                                  html.window.open(StaticUtils.resume, 'pdf'),
                              child: const Text(
                                "Resume",
                              ),
                            ),
                          ),
                          Space.x1!,
                          Container(
                            color: Colors.grey[900]!,
                            width: AppDimensions.normalize(30),
                            height: AppDimensions.normalize(0.5),
                          ),
                          ...WorkUtils.logos.asMap().entries.map(
                                (e) => Expanded(
                                  child: CommunityIconBtn(
                                    icon: e.value,
                                    link: WorkUtils.communityLinks[e.key],
                                    height:
                                        WorkUtils.communityLogoHeight[e.key],
                                  ),
                                ),
                              )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: size.width * 0.05,
              ),
            ],
          )
        ],
      ),
    );
  }
}
