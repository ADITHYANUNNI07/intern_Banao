import 'package:flutter/material.dart';
import 'package:intern/presentation/bottom_nav/bottom_nav.dart';
import 'package:intern/presentation/home/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: MainPageScreen(),
    );
  }
}
