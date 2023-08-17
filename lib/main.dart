import 'package:budgetbee/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ColorTheme());
}

class ColorTheme extends StatelessWidget {
  const ColorTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF185951),
        primarySwatch: const MaterialColor(0xFF185951, {
          50: Color(0xFFE0F4F3),
          100: Color(0xFFB3DDD9),
          200: Color(0xFF80C7C0),
          300: Color(0xFF4DA0A8),
          400: Color(0xFF268C90),
          500: Color(0xFF007877),
          600: Color(0xFF006C6D),
          700: Color(0xFF006065),
          800: Color(0xFF00545C),
          900: Color(0xFF003F4D),
        }),
        textTheme: GoogleFonts.rubikTextTheme(),
      ),
      home: const SplashScreen(),
    );
  }
}
