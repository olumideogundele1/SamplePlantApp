import 'package:flutter/material.dart';
import 'package:my_plant_ui/screens/components/details/body.dart';

class DetailsScreen extends StatelessWidget {

  final String title;
  final String country;
  final int price;
  final String imageUrl;

  DetailsScreen({this.title,this.country,this.price,this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        title: title,
        country: country,
        price: price,
        imageUrl: imageUrl,
      ),
    );
  }
}
