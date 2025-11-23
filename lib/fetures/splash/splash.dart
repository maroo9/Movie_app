import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie_app1/core/Assetsmanger/Assetsmanger.dart';
import 'package:movie_app1/core/Colorsmanger/Colorsmanger.dart';
import 'package:movie_app1/core/Routesmanger/Routesmanger.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, Routesmanger.Onboriding1);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset(ImageAssets.splash),
              Spacer(),
              Image.asset(ImageAssets.route),
            ],
          ),
        ),
      ),
    );
  }
}
