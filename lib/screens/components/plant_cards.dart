import 'package:flutter/material.dart';
import 'package:my_plant_ui/models/card_object.dart';
import 'package:my_plant_ui/screens/components/plant_card.dart';
import 'package:provider/provider.dart';
import 'details/details_screen.dart';

class PlantCards extends StatelessWidget {
  const PlantCards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CardObject>(
      builder: (context,data,child){
        List<CardObject> list = data.cardObjects();
        return SizedBox(
          height: MediaQuery.of(context).size.height / 2.5 ,
          child: ListView.builder(
            shrinkWrap: true,
              scrollDirection: Axis.horizontal,
            physics: ClampingScrollPhysics(),
              itemCount: list.length,
              itemBuilder: (context,int index) {
              String title = list[index].title;
              String country = list[index].country;
              int price = list[index].price;
              String imageUrl = list[index].imageUrl;
                return RecommendedPlantCard(
                    title: title,
                    country: country,
                    price: price,
                    image: list[index].imageUrl,
                    tap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailsScreen(
                          title: title,
                          country: country,
                          price: price,
                          imageUrl: imageUrl,
                        ))
                        );
                    },

                    );
                },
          ),
        );
      },

//        children: [
//          RecommendedPlantCard(
//            title: "Samantha",
//            country: "Russia",
//            price: 440,
//            tap: (){
//              Navigator.push(context,
//              MaterialPageRoute(builder: (context) => DetailsScreen())
//              );
//            },
//            image: "assets/images/image_1.png",
//          ),
//          RecommendedPlantCard(
//            title: "Angelica",
//            country: "UK",
//            price: 446,
//            tap: (){
//              Navigator.push(context,
//                  MaterialPageRoute(builder: (context) => DetailsScreen())
//              );
//            },
//            image: "assets/images/image_2.png",
//          ),
//          RecommendedPlantCard(
//            title: "June",
//            country: "USA",
//            price: 445,
//            tap: (){
//              Navigator.push(context,
//                  MaterialPageRoute(builder: (context) => DetailsScreen()));
//            },
//            image: "assets/images/image_3.png",
//          ),
//        ],

    );

  }
}



