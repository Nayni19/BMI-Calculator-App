import '../constants.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.bmi, required this.weight, required this.interpret});

  final String bmi;
  final String weight;
  final String interpret;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(weight.toUpperCase(), style: greenLabel),
          Text(bmi, style: resultLabel),
          Column(
            children: [
              Text(
                'Normal BMI range',
                style: TextStyle(fontSize: 25.0, color: Colors.grey),
              ),
              SizedBox(height: 10.0,),
              Text(
                '18.5 - 25 kg/m2',
                style: resultText,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(interpret,
                style: resultText, textAlign: TextAlign.center),
          )
        ],
      ),
    );
  }
}
