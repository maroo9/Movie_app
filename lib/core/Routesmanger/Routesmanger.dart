import 'package:flutter/cupertino.dart';
import 'package:movie_app1/fetures/auth/Register.dart';
import 'package:movie_app1/fetures/auth/login.dart';
import 'package:movie_app1/fetures/auth/Forget_password.dart';
import 'package:movie_app1/fetures/mainlayout/mainlayout.dart';
import 'package:movie_app1/fetures/onboarding/onboarding.dart';
import 'package:movie_app1/fetures/splash/splash.dart';
abstract class Routesmanger {
  static const String Logins = "/login";
  static const String mainlayout = "/main_layout";
  static const String Registes = "/register";
  // static const String CreateEvents = "/CreataEvent";
  // static const String Locations = "/LocationTab";
   static const String Splaschreens = "/splash";
  // static const String Onboriding1s = "/onboriding1";
  // static const String Onboriding12 = "/onboriding2";
  // static const String Onboriding13 = "/onboriding3";
   static const String Onboriding1 = "/onboriding";
  // static const String Googlemaps = "/googlemaps";
  static const String ForgetPasswords = "/Forgetpassword";

  static Map<String,WidgetBuilder> routes={
    Logins: (context)=>Login(),
    Registes:(context)=>Register(),
    mainlayout:(context)=>Mainlayout(),
    ForgetPasswords:(context)=>ForgetPassword(),
    Onboriding1:(context)=>OnBoarding(),
    Splaschreens:(context)=>Splash(),


    // CreateEvents:(context)=>CreataEvent(),
    // Locations:(context)=>LocationTab(),
    // Onboriding12:(context)=>onboarding2(),
    // Googlemaps:(context)=>GoogleMapsservicess(),
    // Onboriding13 :(context)=>onbording3(),
    // Onboriding14 :(context)=>onbording4(),

  };

}