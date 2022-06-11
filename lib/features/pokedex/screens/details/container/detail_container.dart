import 'package:flutter/material.dart';
import 'package:pokedex/common/error/failure.dart';
import 'package:pokedex/common/models/pokemon.dart';
import 'package:pokedex/common/repositories/pokemon_repository.dart';
import 'package:pokedex/common/widgets/error.dart';
import 'package:pokedex/common/widgets/loading.dart';
import 'package:pokedex/features/pokedex/screens/details/detail_page.dart';

class DetailArguments {
  DetailArguments({required this.name});

  final String name;
}

class DetailsContainer extends StatelessWidget {
  const DetailsContainer(
      {Key? key, required this.repository, required this.arguments})
      : super(key: key);

  final IPokemonRepository repository;
  final DetailArguments arguments;

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
          return DetailPage(pokemonName: arguments.name);
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
