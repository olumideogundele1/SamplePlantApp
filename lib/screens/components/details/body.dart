import 'package:flutter/material.dart';
import 'package:my_plant_ui/constants.dart';

import 'image_and_icon.dart';
import 'title_and_price.dart';
class Body extends StatelessWidget {

  final String title;
  final String country;
  final int price;
  final String imageUrl;

  const Body({this.title, this.country, this.price, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          ImageAndIconCard(imageUrl: imageUrl),
          TitleAndPrice(
            title: title,
            country: country,
            price: price,
          ),
          SizedBox(height: kDefaultPadding,),
          Row(
            children: <Widget>[
               SizedBox(
                  height: 84,
                  width: size.width / 2,
                  child: FlatButton(
                    onPressed: (){},
                    color: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40)
                      )
                    ),
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    )
                  ),
                ),

              Expanded(
                  child: FlatButton(
                      onPressed: (){},
                      child: Text('Description')))
            ],
          ),
          SizedBox(
            height: kDefaultPadding,
          )
        ],

      ),
    );
  }
}

