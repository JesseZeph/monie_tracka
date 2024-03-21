import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monie_tracka/constants/app_constants.dart';
import 'package:monie_tracka/views/common/custom_text.dart';
import 'package:monie_tracka/views/common/width_spacer.dart';

class TransactionWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onTap;

  const TransactionWidget({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width * 0.35,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        decoration: BoxDecoration(
          color: monieWhite,
          borderRadius: BorderRadius.circular(25.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon, size: 13.r),
            const WidthSpacer(width: 5),
            CustomText(
              text: text,
              color: mainTextColor,
              weight: FontWeight.w600,
            )
          ],
        ),
      ),
    );
  }
}
