import 'package:cheems_unlimited/bloc/counter_bloc.dart';
import 'package:cheems_unlimited/pages/home_page.dart';
import 'package:cheems_unlimited/theme/primary_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cheems Unlimited',
      debugShowCheckedModeBanner: false,
      theme: PrimaryTheme.theme,
      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: const HomePage(),
      ),
    );
  }
}
