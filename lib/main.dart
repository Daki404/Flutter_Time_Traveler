import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:time_traveler/page/intro_screen.dart';
import 'package:time_traveler/page/quiz_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Time_Traveler',
      theme: ThemeData(
          primaryColor: const Color.fromRGBO(53, 162, 159, 1.0),
          brightness: Brightness.dark,
          fontFamily: GoogleFonts.notoSansKr().fontFamily,
          textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontSize: 72.0,
              fontWeight: FontWeight.bold,
            ),
            displayMedium: TextStyle(
              fontSize: 36.0,
            ),
            displaySmall: TextStyle(
              fontSize: 14.0,
              color: Color.fromRGBO(245, 245, 220, 1),
            ),
          )),
      initialRoute: '/',
      routes: {
        '/': (context) => IntroScreen(),
        '/quiz': (context) => QuizScreen(),
      },
    ),
  );
}
