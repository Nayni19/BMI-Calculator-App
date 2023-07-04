import 'package:flutter/material.dart';
import '../components/gender.dart';
import '../components/reusable_card.dart';
import '../components/bottomContainer.dart';
import '../constants.dart';
import '../components/sliderContainer.dart';
import '../components/indicator.dart';

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

  int weight = 40;
  int age = 20;

  void increaseWeight (){
    setState(() {
      weight ++;
    });
  }

  void decreaseWeight (){
    setState(() {
      weight--;
    });
  }

  void increaseAge (){
    setState(() {
      age ++;
    });
  }

  void decreaseAge (){
    setState(() {
      age--;
    });
  }

  void navigationHandler(){
    Navigator.pushNamed(context, '/result');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
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
                Expanded(child: ReusableCard(color: inactiveCardColor, childWidget: IndicatorContainer(name: 'WEIGHT', indicatorVal: weight.toString(), incrementHandler: increaseWeight, decrementHandler: decreaseWeight), onpress: (){}),),
                Expanded(child: ReusableCard(color: inactiveCardColor, childWidget: IndicatorContainer(name: 'AGE', indicatorVal: age.toString(),incrementHandler: increaseAge, decrementHandler: decreaseAge), onpress: (){}),)
              ],
            ),
          ),
          BottomContainer(label: 'CALCULATE',onPressHandler: navigationHandler,)
        ],
      )

    );
  }
}
