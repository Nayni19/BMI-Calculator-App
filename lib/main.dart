import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xFF1D2136),
          secondary: Color(0xFF323244),
        ),
        scaffoldBackgroundColor: Color(0xFF1D2136),
    ),
      initialRoute: '/',
      routes: {
        '/':(context) => InputPage(),
        '/result':(context) => ResultsPage(),
      },
    );
  }
}
