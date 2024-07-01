import 'package:bmi/constants.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({required this.bmiResult, required this.resultText, required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            child: Center(
                child: Text(
              'Your Result',
              style: kTitleTextStyle,
            )),
          )),
          Expanded(
            flex: 5,
            child: ReusabeCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toLowerCase() , style: kResultTextStyle,),
                  Text(bmiResult, style: kBMITextStyle,),
                  Text(interpretation,style: kBodyTextStyle, textAlign: TextAlign.center,)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage()));
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                  child: Text(
                'RE-CALCULATE',
                style: kLargeButtonTextStyle,
              )),
              color: kBottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              // padding: EdgeInsets.only(bottom: 20.0),
              height: kBottomContainerHeight,
              width: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}
