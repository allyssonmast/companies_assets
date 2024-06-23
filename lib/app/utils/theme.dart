import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var lightTheme = ThemeData(
  useMaterial3: true,
  cardTheme: const CardTheme(
    clipBehavior: Clip.antiAlias,
    color: Colors.deepPurple,
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

var darkTheme = ThemeData(
  cardTheme: const CardTheme(clipBehavior: Clip.antiAlias),
  brightness: Brightness.dark,
  useMaterial3: true,
  textTheme: GoogleFonts.latoTextTheme(),
);
