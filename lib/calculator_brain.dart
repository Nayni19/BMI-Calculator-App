import 'dart:math';

class CalculatorBrain{
 CalculatorBrain({required this.weight, required this.height});

 final int weight;
 final int height;

 double _bmi = 0.0;
 
 String CalculateBMI (){
  _bmi = weight / pow(height / 100, 2);
  return _bmi.toStringAsFixed(1);
 }

 String CalculateWeight(){
  if(_bmi >= 25){
    return 'Overweight';
  } else if(_bmi >= 18.5){
    return 'Normal';
  } else {
    return 'Underweight';
  }
 }

 String Interpretation(){
  if(_bmi >= 25){
    return 'You have a higher than normal body weight. Try working out.';
  } else if(_bmi >= 18.5){
    return 'You have a normal body weight. Good job!';
  } else {
    return 'You have a lower than normal body weight. Eat more.';
  }
 }
}