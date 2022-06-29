import 'package:flutter/cupertino.dart';
import 'package:pokedex/common/widgets/category_card.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryCard(title: "Categoria"),
          CategoryCard(title: "Categoria"),
          CategoryCard(title: "Categoria"),
          CategoryCard(title: "Categoria"),
        ],
      ),
    );
  }
}
