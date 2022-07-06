import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Input extends StatelessWidget {
  String label;
  bool? hideText;

  Input({Key? key, required this.label, this.hideText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool innerHidetext = hideText ?? false;

    return TextField(
      obscureText: innerHidetext,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: GoogleFonts.poppins(
          // fontSize: 36,
          color: const Color(0xFF6AC3E9),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
