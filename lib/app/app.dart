import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer_app/app/cubit/theme_cubit.dart';
import 'package:flutter_timer_app/timer/view/timer_page.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    // Get current theme
    Brightness brightness = SchedulerBinding.instance.window.platformBrightness;
    bool currentTheme = brightness == Brightness.dark;

    return BlocBuilder<ThemeCubit, bool?>(
      builder: (context, state) {
        context.read<ThemeCubit>().onThemeChange();
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const TimerPage(),
          theme: (state ?? currentTheme)
              ? ThemeData.dark(useMaterial3: true)
              : ThemeData.light(useMaterial3: true),
        );
      },
    );
  }
}
