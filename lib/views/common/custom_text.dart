import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monie_tracka/constants/app_constants.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      this.size,
      this.weight,
      this.color,
      this.align,
      this.overflow,
      this.style});
  final String text;
  final double? size;
  final FontWeight? weight;
  final Color? color;
  final TextAlign? align;
  final TextOverflow? overflow;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align ?? TextAlign.center,
      overflow: overflow ?? TextOverflow.clip,
      style: style ??
          GoogleFonts.spaceGrotesk(
            fontSize: size?.sp ?? 16.sp,
            fontWeight: weight ?? FontWeight.normal,
            color: color ?? mainTextColor,
          ),
      softWrap: true,
    );
  }
}
