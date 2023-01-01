import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class TimerBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint('${bloc.runtimeType} $change');
  }
}