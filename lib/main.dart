import 'package:flutter/material.dart';
import 'package:movie_app1/config/Theme/Theme.dart';
import 'package:movie_app1/core/Routesmanger/Routesmanger.dart';
void main(){
  runApp( const MoveApp());
}

class MoveApp extends StatelessWidget {
  const MoveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute: Routesmanger.Splaschreens,
      routes: Routesmanger.routes,
      theme:ThemeManger.light ,
      themeMode:ThemeMode.light ,
      darkTheme:ThemeManger.dark ,
      locale: Locale("en"),
    );
  }
}
