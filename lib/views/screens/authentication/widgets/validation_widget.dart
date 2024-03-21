import 'package:flutter/material.dart';
import 'package:monie_tracka/constants/app_constants.dart';

import '../../../common/appstyle.dart';
import '../../../common/width_spacer.dart';

class ValidationWidget extends StatelessWidget {
  final Color shapeColor;
  final String text;
  const ValidationWidget({
    super.key,
    required this.shapeColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: width * 0.02,
          height: height * 0.02,
          decoration: ShapeDecoration(
            shape: const CircleBorder(),
            color: shapeColor,
          ),
        ),
        const WidthSpacer(width: 5),
        Text(
          text,
          style: appStyle(10, lightTextColor, FontWeight.w500),
        )
      ],
    );
  }
}
