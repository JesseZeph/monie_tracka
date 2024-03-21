import 'package:flutter/material.dart';
import 'package:monie_tracka/constants/app_constants.dart';
import 'package:monie_tracka/views/common/appstyle.dart';

class LabelTextWidget extends StatelessWidget {
  final String text;
  const LabelTextWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: appStyle(14, mainTextColor, FontWeight.w700),
    );
  }
}
