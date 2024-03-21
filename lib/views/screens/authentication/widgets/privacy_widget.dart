import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:monie_tracka/constants/app_constants.dart';
import 'package:monie_tracka/views/common/appstyle.dart';
import 'package:monie_tracka/views/screens/authentication/widgets/span_text.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({Key? key, this.onPressed}) : super(key: key);
  final Function(bool?)? onPressed;

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: SpanTextWidget(
              firstSpan: "By signing up, I have read and agreed to the ",
              secondSpan: 'Terms and Conditions ',
              onTapSecoondSpan: () {},
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text.rich(
              TextSpan(
                  text: 'Use policy',
                  style: appStyle(12, mainTextColor, FontWeight.w600),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                  children: [
                    TextSpan(
                      text: " and ",
                      style: appStyle(11, lightTextColor, FontWeight.w600),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: appStyle(12, mainTextColor, FontWeight.w600),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
