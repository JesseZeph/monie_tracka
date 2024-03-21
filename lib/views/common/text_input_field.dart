import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monie_tracka/constants/app_constants.dart';
import 'package:monie_tracka/views/common/appstyle.dart';

class TextInputField extends StatelessWidget {
  final String? hintText;
  final void Function(String value)? onChanged;
  final String? errorText;
  final bool? obscureText;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final String? Function(String?)? validator;
  final double? width;
  final Widget? suffixIcon;
  final FocusNode? focusNode;

  const TextInputField({
    super.key,
    this.hintText,
    this.onChanged,
    this.errorText,
    this.controller,
    this.obscureText,
    this.validator,
    this.inputType,
    this.width,
    this.suffixIcon,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: width ?? 350.w,
          child: TextFormField(
            onChanged: onChanged,
            obscureText: obscureText ?? false,
            controller: controller,
            decoration: InputDecoration(
              fillColor: textFieldColor,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: const BorderSide(
                  color: mainTextColor,
                  width: 2,
                ),
              ),
              hintText: hintText,
              suffixIcon: suffixIcon,
              hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: 14.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            style: appStyle(14, mainTextColor, FontWeight.w600),
            validator: validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: inputType,
          ),
        ),
      ],
    );
  }
}
