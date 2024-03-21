import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

import '../../../../constants/app_constants.dart';
import '../../../common/appstyle.dart';

class SpanTextWidget extends StatelessWidget {
  final String firstSpan, secondSpan;
  final VoidCallback onTapSecondSpan;
  const SpanTextWidget({
    super.key,
    required this.firstSpan,
    required this.secondSpan,
    required this.onTapSecondSpan,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: firstSpan,
        style: appStyle(11, lightTextColor, FontWeight.w600),
        children: [
          TextSpan(
            text: secondSpan,
            style: appStyle(12, mainTextColor, FontWeight.w600),
            recognizer: TapGestureRecognizer()..onTap = onTapSecondSpan,
          ),
        ],
      ),
    );
  }
}
