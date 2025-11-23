import 'package:flutter/cupertino.dart';
import 'package:movie_app1/fetures/onboarding/onboarding.dart';
import 'package:movie_app1/fetures/splash/splash.dart';

abstract class RoutesManger{

  static const String splash = "/splash";
  static const String onboarding = "/onboarding";
  static Map<String, WidgetBuilder> routes ={
    splash : (context)=> Splash(),
    onboarding :(context) => OnBoarding(),


  };


}