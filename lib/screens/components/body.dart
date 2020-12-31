import 'package:flutter/material.dart';
import 'package:my_plant_ui/screens/components/header_screen_with_search.dart';

import 'plant_cards.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //height and width of screen
    Size size = MediaQuery.of(context).size;

    //enables scrolling on small screens
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TextWithMoreBtn(title: 'Recomended',press: (){},),
          PlantCards(),
          TextWithMoreBtn(title: 'Feauterd Plants',press: (){},)
        ],
      ),
    );
  }
}

