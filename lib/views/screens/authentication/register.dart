import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:monie_tracka/constants/app_constants.dart';
import 'package:monie_tracka/constants/image_strings.dart';
import 'package:monie_tracka/providers/auth_provider.dart';
import 'package:monie_tracka/views/common/animated_button.dart';
import 'package:monie_tracka/views/common/appstyle.dart';
import 'package:monie_tracka/views/common/custom_button.dart';
import 'package:monie_tracka/views/common/custom_text.dart';
import 'package:monie_tracka/views/common/height_spacer.dart';
import 'package:monie_tracka/views/common/text_input_field.dart';
import 'package:monie_tracka/views/screens/authentication/login.dart';
import 'package:monie_tracka/views/screens/authentication/widgets/label_text.dart';
import 'package:monie_tracka/views/screens/authentication/widgets/privacy_widget.dart';
import 'package:monie_tracka/views/screens/authentication/widgets/validation_widget.dart';
import 'package:provider/provider.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<AuthNotifier>(
          builder: (context, authNotifier, child) {
            return Container(
              width: width,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ListView(
                children: [
                  SvgPicture.asset(logo),
                  const HeightSpacer(size: 20),
                  const CustomText(
                    text: 'Create Account',
                    size: 24,
                    weight: FontWeight.w700,
                    color: mainTextColor,
                  ),
                  const HeightSpacer(size: 15),
                  CustomText(
                    text: 'Enter your Details',
                    style: appStyle(16, lightTextColor, FontWeight.w500),
                  ),
                  const HeightSpacer(size: 20),
                  const LabelTextWidget(
                    text: 'Username',
                  ),
                  const HeightSpacer(size: 15),
                  const TextInputField(),
                  const HeightSpacer(size: 20),
                  const LabelTextWidget(
                    text: 'Phone Number',
                  ),
                  const HeightSpacer(size: 15),
                  const TextInputField(
                    inputType: TextInputType.phone,
                  ),
                  const HeightSpacer(size: 20),
                  const LabelTextWidget(
                    text: 'Email',
                  ),
                  const HeightSpacer(size: 15),
                  const TextInputField(
                    inputType: TextInputType.emailAddress,
                  ),
                  const HeightSpacer(size: 20),
                  const LabelTextWidget(
                    text: 'Enter Password',
                  ),
                  const HeightSpacer(size: 15),
                  Column(
                    children: [
                      TextInputField(
                        obscureText: authNotifier.obscureText,
                        onChanged: authNotifier.updatePasswordValidation,
                      ),
                      const HeightSpacer(size: 10),
                      if (!authNotifier.isPasswordValid)
                        ValidationWidget(
                          shapeColor: Colors.yellow.shade600,
                          text: 'Weak',
                        ),
                      if (authNotifier.isPasswordValid &&
                          !authNotifier.containsSpecialCharacters)
                        ValidationWidget(
                          shapeColor: Colors.green.shade300,
                          text: 'Use at least 8 characters',
                        ),
                      if (authNotifier.isPasswordValid &&
                          !authNotifier.containsSpecialCharacters)
                        const ValidationWidget(
                          shapeColor: lightTextColor,
                          text:
                              'Mix letters, numbers and special characters (e.g #\$&\\)',
                        ),
                    ],
                  ),
                  const HeightSpacer(size: 20),
                  const LabelTextWidget(
                    text: 'Confirm Password',
                  ),
                  const HeightSpacer(size: 15),
                  TextInputField(
                    obscureText: authNotifier.obscureText,
                  ),
                  const HeightSpacer(size: 20),
                  const TermsAndConditions(),
                  const HeightSpacer(size: 50),
                  AnimatedButton(
                      onTap: () {
                        Get.to(() => const LoginPage());
                      },
                      child: const CustomButton(text: 'Sign Up')),
                  const HeightSpacer(size: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Text.rich(
                      TextSpan(
                        text: "I already have an account? ",
                        style: appStyle(11, lightTextColor, FontWeight.w600),
                        children: [
                          TextSpan(
                            text: 'Login ',
                            style: appStyle(12, mainTextColor, FontWeight.w700),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.to(() => const LoginPage());
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
