import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app1/config/Theme/Theme.dart';
import 'package:movie_app1/core/Routesmanger/Routesmanger.dart';
void main(){
  runApp( const MoveApp());
}

class MoveApp extends StatelessWidget {
  const MoveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
         initialRoute:RoutesManger.splash ,
        routes: RoutesManger.routes,
        theme:ThemeManger.light ,
        themeMode:ThemeMode.dark ,
        darkTheme:ThemeManger.dark ,
        locale: Locale("en"),
      ),
    );
  }
}
