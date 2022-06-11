import 'package:flutter/material.dart';
import 'package:pokedex/common/error/failure.dart';
import 'package:pokedex/common/models/pokemon.dart';
import 'package:pokedex/common/repositories/pokemon_repository.dart';
import 'package:pokedex/common/widgets/error.dart';
import 'package:pokedex/common/widgets/loading.dart';
import 'package:pokedex/features/pokedex/screens/home/home_page.dart';

class HomeContainer extends StatelessWidget {
  final IPokemonRepository repository;

  const HomeContainer({Key? key, required this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>>(
      future: repository.getAllPokemons(),
      builder: ((context, snapshot) {
        // Loading
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Loading();
        }

        // Pokemon list
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return HomePage(pokemonList: snapshot.data!);
        }

        // Error treatment
        if (snapshot.hasError) {
          return Error(error: (snapshot.error as Failure).message!);
        }

        return const Scaffold();
      }),
    );
  }
}
