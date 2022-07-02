import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  void Function() handleFilterVisibility;

  SearchInput({Key? key, required this.handleFilterVisibility})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: Colors.grey[200],
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search',
          prefixIcon: const Icon(Icons.search_rounded),
          suffixIcon: IconButton(
            onPressed: handleFilterVisibility,
            icon: const Icon(Icons.filter_list_outlined),
          ),
        ),
      ),
    );
  }
}
