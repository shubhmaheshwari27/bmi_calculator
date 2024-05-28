import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/icon_content.dart';
import 'package:bmi/reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF1D1333);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

  void updateColour(int gender) {
    if (gender == 1) {
      if (maleCardColour == inactiveCardColour) {
        maleCardColour == activeCardColour;
      } else {maleCardColour == inactiveCardColour;}
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: GestureDetector(onTap: () {
                  setState(() {
                    updateColour(1);
                  });
                },
                  child: ReusabeCard(
                    colour: maleCardColour,
                    cardChild: IconContent(label: "MALE",icon: FontAwesomeIcons.mars,),
                  ),
                ),
              ),
              Expanded(
                child: ReusabeCard(
                  colour: activeCardColour,
                  cardChild: IconContent(label: "FEMALE",icon: FontAwesomeIcons.venus,),
                ),
              )
            ],
          )),
          Expanded(
            child: ReusabeCard(colour: activeCardColour),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusabeCard(colour: activeCardColour),
              ),
              Expanded(
                child: ReusabeCard(colour: activeCardColour),
              )
            ],
          )),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}




