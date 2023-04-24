import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/src/core/routes/app_pages.dart';
import 'package:medical_app/src/core/routes/app_routes.dart';


class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(430, 932),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute:AppRoutes.main,
          onGenerateRoute: AppPages.generateRoute,
          darkTheme: ThemeData.dark(),
          theme: ThemeData.light(),
        );
      },
    );
  }
}
