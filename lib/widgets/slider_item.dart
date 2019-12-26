import 'package:flutter/cupertino.dart';
import 'package:food_onboarding_app/constants/constants.dart';
import 'package:food_onboarding_app/models/slider.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          sliderArrayList[index].sliderHeading,
          style: TextStyle(
            fontFamily: Constants.POPPINS,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.3,
            color: Color(0xff01dc9d),
            fontSize: 18.0,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02,)  , 
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              sliderArrayList[index].sliderSubHeading,
              style: TextStyle(
                fontFamily: Constants.OPEN_SANS,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.0,
                height: 1.1,
                fontSize: 12.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.14),
            child: Container(
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(sliderArrayList[index].sliderImageUrl))),
          ),
          ) ,
        )
      ],
    );
  }
}
