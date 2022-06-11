import 'package:flutter/material.dart';
import 'package:pokedex/common/repositories/pokemon_repository.dart';
import 'package:pokedex/features/pokedex/screens/details/container/detail_container.dart';
import 'package:pokedex/features/pokedex/screens/home/container/home_container.dart';

class PokedexRoute extends StatelessWidget {
  final IPokemonRepository repository;

  const PokedexRoute({Key? key, required this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
        initialRoute: "/",
        onGenerateRoute: (RouteSettings settings) {
          if (settings.name == '/') {
            return MaterialPageRoute(
              builder: (context) {
                return HomeContainer(repository: repository);
              },
            );
          }

          if (settings.name == '/details') {
            return MaterialPageRoute(
              builder: (context) {
                return DetailsContainer(
                  repository: repository,
                  arguments: (settings.arguments as DetailArguments),
                );
              },
            );
          }

          return null;
        });
  }
}
