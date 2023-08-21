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
        //useMaterial3: true,
        appBarTheme:
            const AppBarTheme(color: Color.fromARGB(98, 254, 251, 251)),
        primaryColor: const Color(0xFF6A50A7),
        primarySwatch: const MaterialColor(0xFF6A50A7, {
          50: Color(0xFFEAE3F2),
          100: Color(0xFFCAB1E0),
          200: Color(0xFFAA7ECE),
          300: Color(0xFF8A4CBB),
          400: Color(0xFF7638AC),
          500: Color(0xFF6A50A7),
          600: Color(0xFF5E489A),
          700: Color(0xFF53408D),
          800: Color(0xFF48387F),
          900: Color(0xFF352A68),
        }),
        textTheme: GoogleFonts.rubikTextTheme(),
      ),
      home: const SplashScreen(),
    );
  }
}
