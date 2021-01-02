import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleAndPrice extends StatelessWidget {

  final String title;
  final String country;
  final int price;

  const TitleAndPrice({Key key, this.title, this.country, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
              left: kDefaultPadding
          ),
          child: RichText(text: TextSpan(
              children: [
                TextSpan(
                  text: title,
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: kTextColor,
                      fontWeight: FontWeight.bold
                  ),
                ),
                TextSpan(
                    text: "\n$country".toUpperCase(),
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    )
                )
              ]
          )),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
              right: kDefaultPadding
          ),
          child: Text("\$$price",
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 25
            ),
          ),
        )
      ],
    );
  }
}

