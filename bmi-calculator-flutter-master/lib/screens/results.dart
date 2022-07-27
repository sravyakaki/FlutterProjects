import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/result-button.dart';

class Results extends StatelessWidget {
  final String resultText;
  final String resultInterpretation;
  final String bmi;

  Results(
      {@required this.bmi,
      @required this.resultInterpretation,
      @required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kResultTextStyle,
            ),
          )),
          Expanded(
              flex: 5,
              child: Container(
                child: ReusableCard(
                  colour: kActiveColors,
                  cardDesign: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        resultText.toUpperCase(),
                        style: kOverallResultTextStyle,
                      ),
                      Text(
                        bmi,
                        style: kBMITextStyle,
                      ),
                      Text(
                        resultInterpretation,
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              )),
          Expanded(
              child: Container(
            child: ResultButton(
                title: 'RE-CALCULATE',
                onTap: () {
                  Navigator.pop(context);
                }),
          ))
        ],
      ),
    );
  }
}
