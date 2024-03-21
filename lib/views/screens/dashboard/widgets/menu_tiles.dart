import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants/app_constants.dart';
import '../../../common/appstyle.dart';
import '../../../common/custom_text.dart';

class MenuTileWidget extends StatelessWidget {
  final String imageUrl;
  final String text;

  const MenuTileWidget({
    Key? key,
    required this.imageUrl,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          child: Container(
            width: width * 0.10,
            height: height * 0.05,
            padding: EdgeInsets.all(5.r),
            decoration: BoxDecoration(
              color: lightTextColor.withOpacity(0.05),
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: SvgPicture.asset(imageUrl),
          ),
        ),
        SizedBox(height: 5.h),
        CustomText(
          text: text,
          style: appStyle(9, mainTextColor, FontWeight.w700),
        ),
      ],
    );
  }
}
