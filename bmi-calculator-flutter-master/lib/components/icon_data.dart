import 'package:flutter/material.dart';
import '../constants.dart';

class ContainerChildWDS extends StatelessWidget {
  ContainerChildWDS({this.textLbl, this.iconImage});
  final String textLbl;
  final IconData iconImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconImage,
          size: 60.0,
        ),
        SizedBox(height: 15.0),
        Text(
          textLbl,
          style: kTextStyle,
        )
      ],
    );
  }
}
