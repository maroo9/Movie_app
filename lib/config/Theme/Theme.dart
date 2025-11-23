import 'package:flutter/material.dart';
import 'package:movie_app1/core/Colorsmanger/Colorsmanger.dart';

class ThemeManger{
  static final ThemeData light = ThemeData();
  static final ThemeData dark = ThemeData(
    scaffoldBackgroundColor: Colorsmanger.Black,
  );
}