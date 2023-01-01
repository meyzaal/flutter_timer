import 'package:flutter/material.dart';
import 'package:flutter_timer_app/timer/view/widgets/timer_actions.dart';
import 'package:flutter_timer_app/timer/view/widgets/timer_background.dart';
import 'package:flutter_timer_app/timer/view/widgets/timer_text.dart';

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer'),
      ),
      body: Stack(
        children: [
          const TimerBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100.0),
                child: Center(
                  child: TimerText(),
                ),
              ),
              TimerActions()
            ],
          ),
        ],
      ),
    );
  }
}
