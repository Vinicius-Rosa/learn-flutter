import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initializeSplash() async {
    await Future.delayed(const Duration(seconds: 3));

    Navigator.pushReplacementNamed(context, "/welcome");
  }

  @override
  void initState() {
    initializeSplash();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Animal Wiki",
          style: GoogleFonts.poppins(
            fontSize: 36,
            color: const Color(0xFF6AC3E9),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
