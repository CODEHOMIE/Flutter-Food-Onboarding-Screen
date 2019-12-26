import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_onboarding_app/ui_views/onboardinglayoutview.dart';

class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: onBordingBody(),
    );
  }

  Widget onBordingBody() => Container(
        child: OnBoardingLayoutView(),
      );
}
