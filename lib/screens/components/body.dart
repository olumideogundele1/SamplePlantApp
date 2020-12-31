import 'package:flutter/material.dart';
import 'package:my_plant_ui/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //height and width of screen
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height * 0.2,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.2 - 27,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36)
                  )
                ),
              ),
            ],
          ),

        )
      ],
    );
  }
}