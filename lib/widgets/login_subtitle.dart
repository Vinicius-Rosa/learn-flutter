import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginSubtitle extends StatelessWidget {
  String text;
  
  LoginSubtitle(this.text, {Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: 22,
        color: const Color(0xFF6AC3E9),
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
