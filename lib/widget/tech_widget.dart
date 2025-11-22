import 'package:flutter/material.dart';
import 'package:zi_dev_web/configs/app_dimensions.dart';
import 'package:zi_dev_web/configs/app_theme.dart';
import 'package:zi_dev_web/configs/app_typography.dart';

class ToolTechWidget extends StatefulWidget {
  final String techName;

  const ToolTechWidget({Key? key, required this.techName}) : super(key: key);

  @override
  State<ToolTechWidget> createState() => _ToolTechWidgetState();
}

class _ToolTechWidgetState extends State<ToolTechWidget> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        // cardKey.currentState!.toggleCard();
      },
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: isHover ? AppTheme.c!.primary : AppTheme.c!.primaryLight,
            size: AppDimensions.normalize(6),
          ),
          Text(
            " ${widget.techName} ",
            style: AppText.l1b,
          )
        ],
      ),
    );
  }
}
