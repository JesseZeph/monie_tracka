import 'package:flutter/material.dart';
import 'package:monie_tracka/views/common/custom_text.dart';
import '../../constants/app_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.color, this.onTap});

  final String text;
  final Color? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            width: width,
            height: height * 0.055,
            decoration: const BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Center(
              child: CustomText(
                text: text,
                color: monieWhite,
                weight: FontWeight.w700,
              ),
            )));
  }
}
