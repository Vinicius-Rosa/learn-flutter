import 'package:flutter/material.dart';
import 'package:pokedex/common/models/pokemon.dart';
import 'package:pokedex/features/pokedex/screens/details/container/detail_container.dart';

class HomePage extends StatelessWidget {
  final List<Pokemon> pokemonList;

  const HomePage({Key? key, required this.pokemonList}) : super(key: key);

  _handleNavigateToDetail(String selectedPokemon, BuildContext context) {
    Navigator.of(context).pushNamed(
      "/details",
      arguments: DetailArguments(name: selectedPokemon),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: pokemonList.length,
        itemBuilder: (BuildContext context, int index) {
          Pokemon pokemon = pokemonList[index];

          return ListTile(
            title: Text(pokemon.name),
            onTap: () => _handleNavigateToDetail(pokemon.name, context),
          );
        },
      ),
    );
  }
}
