import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottomContainer.dart';
import '../components/reusable_card.dart';
import '../components/result.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(30.0),
              alignment: Alignment.bottomCenter,
              child: Text('Your Result', style: boldLabel,),
            ),
            Expanded(child: ReusableCard(color: inactiveCardColor, childWidget: Result(), onpress: (){})),
            BottomContainer(label: 'RE-CALCULATE', onPressHandler: (){Navigator.pop(context);})
          ],
        ),
        ),
    );
  }
}
