import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientButton extends StatelessWidget {
  String label;
  void Function() onPress;
  final borderRadius = BorderRadius.circular(20);

  GradientButton({Key? key, required this.label, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment(-0.95, 0.0),
          end: Alignment(1.0, 0.0),
          colors: [Color(0xff4284DB), Color(0xff29EAC4)],
          stops: [0.0, 1.0],
        ),
        borderRadius: borderRadius,
      ),
      child: MaterialButton(
        onPressed: onPress,
        disabledElevation: 0.0,
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        child: Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
