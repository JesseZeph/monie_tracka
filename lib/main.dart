import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:monie_tracka/constants/app_constants.dart';
import 'package:monie_tracka/providers/auth_provider.dart';
import 'package:monie_tracka/views/screens/authentication/register.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => AuthNotifier())
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'MonieTracka',
          theme: ThemeData(
            scaffoldBackgroundColor: monieWhite,
            primarySwatch: Colors.grey,
          ),
          home: const RegisterWidget(),
        );
      },
    );
  }
}
