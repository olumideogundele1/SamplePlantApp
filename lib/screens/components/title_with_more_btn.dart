import 'package:flutter/material.dart';
import 'package:my_plant_ui/constants.dart';
import 'package:my_plant_ui/screens/components/text_with_underline.dart';

class TextWithMoreBtn extends StatelessWidget {
  const TextWithMoreBtn({
    Key key, this.title, this.press,
  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          TextWithUnderline(title: title,),
          Spacer(),
          FlatButton(
            padding: EdgeInsets.only(left: 10.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: kPrimaryColor,
            onPressed: press,
            child: Text('More',
                style: TextStyle(
                    color: Colors.white
                )
            ),
          )
        ],
      ),
    );
  }
}
