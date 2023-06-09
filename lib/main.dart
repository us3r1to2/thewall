import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thewall/auth/signin_or_signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        fontFamily: GoogleFonts.raleway().fontFamily,
      ),
      home: const LoginOrRegister(),
    );
  }
}
