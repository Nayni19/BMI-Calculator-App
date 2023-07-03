import 'package:flutter/material.dart';
import 'gender.dart';
import 'reusable_card.dart';
import 'bottomContainer.dart';
import 'constants.dart';
import 'sliderContainer.dart';

enum Gender{
  Male, 
  Female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  Gender selectedGender = Gender.Male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child:  Row(
              children: [
                Expanded(
                  child: ReusableCard(color: selectedGender == Gender.Male? activeCardColor: inactiveCardColor, childWidget: GenderCard(iconType: Icons.male, name: 'MALE'), onpress: (){setState(() {
                    selectedGender = Gender.Male;
                  });}),
                ),

                Expanded(
                  child: ReusableCard(color: selectedGender == Gender.Female? activeCardColor: inactiveCardColor, childWidget: GenderCard(iconType: Icons.female, name: 'FEMALE'),onpress: (){
                    setState(() {
                      selectedGender = Gender.Female;
                    });
                  }),
                ),           
              ],
            ),
          ),
          Expanded(child: ReusableCard(color: inactiveCardColor,childWidget: CustomSlider(), onpress: (){}),),
          Expanded(
            child: Row(
             
              children: [
                Expanded(child: ReusableCard(color: inactiveCardColor, childWidget: Container(),onpress: (){}),),
                Expanded(child: ReusableCard(color: inactiveCardColor, childWidget: Container(), onpress: (){}),)
              ],
            ),
          ),
          BottomContainer(label: 'CALCULATE',)
        ],
      )

    );
  }
}
