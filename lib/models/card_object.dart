
import 'package:flutter/foundation.dart';

class CardObject extends ChangeNotifier{
  final String title;
  final String country;
  final int price;
  final String imageUrl;

  CardObject({this.title, this.country, this.price, this.imageUrl});


  List<CardObject> cardObjects(){
    List<CardObject> list = [
      CardObject(
          title:'Samantha',
          country: 'Russia',
          price: 440,
          imageUrl: "assets/images/image_1.png"
      ),
      CardObject(
          title:'Angelica',
          country: 'UK',
          price: 400,
          imageUrl: "assets/images/image_2.png"
      ),
      CardObject(
          title:'June',
          country: 'USA',
          price: 480,
          imageUrl: "assets/images/image_3.png"
      )

    ];

    return list;
  }


}