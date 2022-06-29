import 'package:pokedex/common/widgets/categories_list.dart';
import 'package:pokedex/common/widgets/home_title.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/common/widgets/notification_button.dart';
import 'package:pokedex/common/widgets/search_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 50),
              children: [
                HomeTitle(title: "Discover your place to stay"),
                const SearchInput(),
                const CategoriesList()
              ],
            ),
            const NotificationButton(),
          ],
        ),
      ),
    );
  }
}
