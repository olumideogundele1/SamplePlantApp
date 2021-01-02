
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_plant_ui/components/bottom_nav_bar.dart';
import 'package:my_plant_ui/constants.dart';
import 'package:my_plant_ui/screens/components/body.dart';


class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {
          print('I am presed');
        },
      ),
    );
  }

}

