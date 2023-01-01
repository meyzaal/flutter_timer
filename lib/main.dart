import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timer_app/app/app.dart';
import 'package:flutter_timer_app/observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = TimerBlocObserver();

  runApp(const AppPage());
}
