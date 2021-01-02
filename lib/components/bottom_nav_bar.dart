import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 2,
          bottom: kDefaultPadding / 2
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10)
        ),
        boxShadow: [
          BoxShadow(
              color: kPrimaryColor.withOpacity(0.23),
              offset: Offset(0,-10),
              blurRadius: 35
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: SvgPicture.asset("assets/icons/flower.svg"),
              onPressed: (){}),
          IconButton(
              icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
              onPressed: (){}),
          IconButton(
              icon: SvgPicture.asset("assets/icons/user-icon.svg"),
              onPressed: (){})
        ],
      ),
    );
  }
}