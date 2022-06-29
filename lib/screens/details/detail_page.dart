import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String pokemonName;

  const DetailPage({Key? key, required this.pokemonName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(pokemonName)),
    );
  }
}
