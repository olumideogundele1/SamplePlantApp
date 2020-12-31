import 'package:flutter/material.dart';
import '../../constants.dart';

class FeatureCard extends StatelessWidget {

  final String imageUrl;
  final Function press;

  FeatureCard({this.imageUrl,this.press});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            top: kDefaultPadding/2,
            left: kDefaultPadding,
            bottom: kDefaultPadding
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageUrl)
            )
        ),
      ),
    );
  }
}