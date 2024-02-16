import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_01/pages/auth/signin.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.indigo,
          accentColor: Colors.purple[200],
          backgroundColor: Colors.white,
        ),
      ),
      home: const SignIn_Page(),
    );
  }
}
