import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class IconCards extends StatelessWidget {
  final String iconUrl;

  IconCards({this.iconUrl});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 62,
      width: 62,
      padding: EdgeInsets.all(kDefaultPadding / 2),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: Offset(0,10),
              blurRadius: 30,
              color: kPrimaryColor.withOpacity(0.25)
          ),
          BoxShadow(
              offset: Offset(-15,-15),
              blurRadius: 30,
              color: Colors.white
          )
        ],

      ),
      child: SvgPicture.asset(iconUrl),
    );
  }
}
