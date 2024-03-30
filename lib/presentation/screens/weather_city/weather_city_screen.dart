import 'package:flutter/material.dart';

class WeatherCity extends StatefulWidget {
  const WeatherCity({super.key});

  @override
  State<WeatherCity> createState() => _WeatherCityState();
}

class _WeatherCityState extends State<WeatherCity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
    );
  }
}
