import 'package:flutter/material.dart';
import 'package:bmi_calculator/bmi_screen.dart';

class BmiResult extends StatelessWidget {
  const BmiResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Column(
        children: [Text('name :'), Text('age :'), Text('Result : ')],
      ),
    );
  }
}
