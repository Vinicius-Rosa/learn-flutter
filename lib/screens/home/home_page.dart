import 'package:pokedex/common/widgets/booking_list.dart';
import 'package:pokedex/common/widgets/categories_list.dart';
import 'package:pokedex/common/widgets/home_title.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/common/widgets/notification_button.dart';
import 'package:pokedex/common/widgets/search_input.dart';

class HomePage extends StatelessWidget {
  ValueNotifier<bool> isCategoryListVisible = ValueNotifier(false);

  handleFilterVisibility() {
    isCategoryListVisible.value = !isCategoryListVisible.value;
  }

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 50),
              children: [
                HomeTitle(title: "Discover your place to stay"),
                SearchInput(handleFilterVisibility: handleFilterVisibility),
                ValueListenableBuilder(
                  valueListenable: isCategoryListVisible,
                  builder: (_, bool value, __) {
                    if (value == true) return const CategoriesList();

                    return const SizedBox();
                  },
                ),
                const BookingList(),
              ],
            ),
            const NotificationButton(),
          ],
        ),
      ),
    );
  }
}
