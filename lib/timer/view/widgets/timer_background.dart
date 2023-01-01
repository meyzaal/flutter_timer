import 'package:flutter/material.dart';

class TimerBackground extends StatelessWidget {
  const TimerBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Colors.blue.withOpacity(0.5)])),
    );
  }
}
