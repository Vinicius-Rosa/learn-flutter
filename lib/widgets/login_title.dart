import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTitle extends StatelessWidget {
  String text;
  LoginTitle(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: 36,
        color: const Color(0xFF6AC3E9),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
