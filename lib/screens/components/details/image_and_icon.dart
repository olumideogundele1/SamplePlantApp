import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIconCard extends StatelessWidget {
  const ImageAndIconCard({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.8,
      padding: EdgeInsets.only(
          bottom: kDefaultPadding * 2
      ),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: kDefaultPadding * 2
                ),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                          onPressed: (){
                            Navigator.pop(context);
                          }),
                    ),
                    Spacer(),
                    IconCards(iconUrl: "assets/icons/sun.svg"),
                    IconCards(iconUrl: "assets/icons/icon_2.svg"),
                    IconCards(iconUrl: "assets/icons/icon_3.svg"),
                    IconCards(iconUrl: "assets/icons/icon_4.svg"),
                  ],
                ),
              )
          ),
          Container(
            height: size.height * 0.8,
            width: size.width * 0.75,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                  image: AssetImage("assets/images/img.png"),
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    topLeft: Radius.circular(50)
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.40)
                  )
                ]
            ),

          )
        ],
      ),
    );
  }
}

