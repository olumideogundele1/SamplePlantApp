import 'package:flutter/material.dart';

import 'FeatureCard.dart';

class FeatureCards extends StatelessWidget {
  const FeatureCards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeatureCard(
            imageUrl: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          FeatureCard(
            imageUrl: "assets/images/bottom_img_2.png",
            press: () {},
          ),

        ],
      ),
    );
  }
}