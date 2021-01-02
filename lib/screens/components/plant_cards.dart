import 'package:flutter/material.dart';
import 'package:my_plant_ui/screens/components/plant_card.dart';
import 'details/details_screen.dart';

class PlantCards extends StatelessWidget {
  const PlantCards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedPlantCard(
            title: "Samantha",
            country: "Russia",
            price: 440,
            tap: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => DetailsScreen())
              );
            },
            image: "assets/images/image_1.png",
          ),
          RecommendedPlantCard(
            title: "Samantha",
            country: "UK",
            price: 446,
            tap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen())
              );
            },
            image: "assets/images/image_2.png",
          ),
          RecommendedPlantCard(
            title: "Samantha",
            country: "USA",
            price: 445,
            tap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
            image: "assets/images/image_3.png",
          ),
        ],
      ),
    );
  }
}



