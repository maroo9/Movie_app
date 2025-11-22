import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app1/config/Theme/Thememanger.dart';
import 'package:movie_app1/core/Routesmanger/Routesmanger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(393, 841),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) =>
          MaterialApp(
            debugShowCheckedModeBanner: false,
            // theme: Thememanger.light,
            // darkTheme: Thememanger.dark,
            // themeMode: configProvider.currenttheme,
            //locale: Locale(configProvider.currentlanguage),
            //ocalizationsDelegates: AppLocalizations.localizationsDelegates,
            //supportedLocales: [
            //   Locale('en'), // English
            //   Locale('ar'), // arabic
            // //],
            routes: Routesmanger.routes,
            initialRoute: Routesmanger.Logins,

            ///FirebaseAuth.instance.currentUser== null? Routesmanger.Logins:Routesmanger.mainlayout ,
            //
          ),
    );
  }
}
