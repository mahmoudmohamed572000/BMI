import 'dart:math';

import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final bool isMale;
  final int age, weight;
  final double height;

  const ResultScreen({
    super.key,
    required this.isMale,
    required this.age,
    required this.weight,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Body Mass Index',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' : 'Female'}',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Healthiness : $resultAnswer',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'BMI : ${(weight / pow(height / 100, 2)).toStringAsFixed(2)}',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age : $age',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Height : ${height.round()}',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Weight : $weight',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String get resultAnswer {
    double result = weight / pow(height / 100, 2);
    if (result < 18.5) {
      return 'Underweight';
    } else if (result < 25.0) {
      return 'Normal weight';
    } else if (result < 30.0) {
      return 'Overweight';
    } else {
      return 'Obesity';
    }
  }
}
