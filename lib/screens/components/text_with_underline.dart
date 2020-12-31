import 'package:flutter/material.dart';
import 'package:my_plant_ui/constants.dart';

class TextWithUnderline extends StatelessWidget {
  const TextWithUnderline({
    Key key, this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 24,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: kDefaultPadding / 4,
              ),
              child: Text(title,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.only(left: kDefaultPadding / 4),
                height: 7,
                color: kPrimaryColor.withOpacity(0.2),
              ),
            ),
          ],
        )
    );
  }
}