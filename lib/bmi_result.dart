import 'package:flutter/material.dart';

class BMIRsultScreen extends StatelessWidget {
  String getResult() {
    if (result >= 25) {
      return '"OVERWEIGHT"        You have a higher than normal body weight. Try to exercise more ';
    } else if (result > 18.5) {
      return '"NORMAL"            You have a normal body weight. Good job!';
    } else {
      return '"UNDERWEIGHT"         You have a lower than normal body weight. You should eat more!    ';
    }
  }

  final int result;
  //final int age;
  //final bool isMale;
  BMIRsultScreen({
    //required this.isMale,
    //required this.age,
    required this.result,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        backgroundColor: Color(0xFFEB1555),
        title: Text('BMI Result'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 150),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(100),
                color: Color(0xFF4C4F5E)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Result : $result',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w900)),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(getResult().toString(),
                      maxLines: 8,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFFEB1555),
                          fontSize: 40,
                          fontWeight: FontWeight.w900)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
