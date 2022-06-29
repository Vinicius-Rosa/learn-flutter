import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTitle extends StatelessWidget {
  String title;

  HomeTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toUpperCase(),
      style: GoogleFonts.leagueGothic(
        fontSize: 86,
        height: 0.95,
        color: const Color.fromARGB(221, 20, 20, 20),
      ),
    );
  }
}
