import 'package:flutter/material.dart';

import '../../constants.dart';

class RecommendedPlantCard extends StatelessWidget {

  final String title;
  final String country;
  final int price;
  final Function tap;
  final String image;

  const RecommendedPlantCard({Key key, this.title, this.country, this.price, this.tap, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          top: kDefaultPadding / 2,
          left: kDefaultPadding,
          bottom: kDefaultPadding * 2
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: tap,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.5)
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    RichText(text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: "$title\n".toUpperCase(),
                              style: Theme.of(context).textTheme.button),
                          TextSpan(
                              text: "$country".toUpperCase(),
                              style: TextStyle(color:kPrimaryColor.withOpacity(0.5))
                          )
                        ]
                    )),
                    Spacer(),
                    Text('\$$price',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold
                      ),)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}