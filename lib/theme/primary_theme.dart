import 'package:flutter/material.dart';

abstract class PrimaryTheme {
  static ThemeData get theme => ThemeData(
    fontFamily: 'Poppins',
    colorScheme: ColorScheme.fromSeed(seedColor: ProjectColors.seedColor),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: ProjectColors.textColor,
      )
    ),
    useMaterial3: true,
  );
}

abstract class ProjectColors {
  static const Color seedColor = Color(0xffd4ac67);
  static const Color textColor = Color(0xffcc973f);
  static const Color appBarIconContainer = Color(0xffF7F8FB);
}
