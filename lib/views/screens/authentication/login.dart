import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:monie_tracka/constants/app_constants.dart';
import 'package:monie_tracka/providers/auth_provider.dart';
import 'package:monie_tracka/views/common/animated_button.dart';
import 'package:monie_tracka/views/common/custom_button.dart';
import 'package:monie_tracka/views/common/custom_text.dart';
import 'package:monie_tracka/views/common/height_spacer.dart';
import 'package:monie_tracka/views/common/text_input_field.dart';
import 'package:monie_tracka/views/screens/authentication/widgets/label_text.dart';
import 'package:monie_tracka/views/screens/dashboard/dashboard.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: monieWhite,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const CustomText(
          text: 'Log In',
          size: 20,
          weight: FontWeight.w700,
        ),
      ),
      body: Consumer<AuthNotifier>(
        builder: (context, authNotifier, child) {
          return Center(
            child: Container(
              width: width,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ListView(
                children: [
                  const HeightSpacer(size: 60),
                  const LabelTextWidget(
                    text: 'Email',
                  ),
                  const HeightSpacer(size: 15),
                  const TextInputField(
                    inputType: TextInputType.emailAddress,
                  ),
                  const HeightSpacer(size: 20),
                  const LabelTextWidget(
                    text: 'Password',
                  ),
                  const HeightSpacer(size: 15),
                  TextInputField(
                    obscureText: authNotifier.obscureText,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        authNotifier.obscureText = !authNotifier.obscureText;
                      },
                      child: Icon(authNotifier.obscureText
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined),
                    ),
                  ),
                  const HeightSpacer(size: 50),
                  AnimatedButton(
                      onTap: () {
                        Get.to(() => const Dashboard());
                      },
                      child: const CustomButton(text: 'Log In')),
                  const HeightSpacer(size: 20),
                  GestureDetector(
                    onTap: () {},
                    child: const CustomText(
                      text: 'Forgot Password?',
                      weight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
