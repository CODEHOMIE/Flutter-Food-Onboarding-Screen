import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_onboarding_app/widgets/get_started_button.dart';

class SlideDots extends StatelessWidget {
  bool isActive;
  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
  
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 3.2),
      height: isActive ? 8 : 5,
      width: isActive ? 8 : 5,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.grey,
        border: isActive ?  Border.all(color: Color(0xff01dc9d),width: 2.0,) : Border.all(color: Colors.transparent,width: 1,),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
