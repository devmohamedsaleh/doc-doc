import 'package:docdoc/core/theming/colors_manager.dart';
import 'package:docdoc/routing/app_router.dart';
import 'package:docdoc/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  AppRouter appRouter;

  DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: Routes.login,
          title: 'Doc App',
          theme: ThemeData(
            primaryColor: ColorsManager.primaryColor,
            scaffoldBackgroundColor: Colors.white,
          ),
        );
      },
    );
  }
}
