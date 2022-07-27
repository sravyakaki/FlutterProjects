import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardDesign, this.gestureTap});

  final Color colour;
  final Widget cardDesign;
  final Function gestureTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureTap,
      child: Container(
        child: cardDesign,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
