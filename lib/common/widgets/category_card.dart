import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatefulWidget {
  String title;
  CategoryCard({Key? key, required this.title}) : super(key: key);

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  bool _isActive = false;

  changeActiveStatus() {
    setState(() {
      _isActive = !_isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeActiveStatus,
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: _isActive
                  ? const Color.fromARGB(221, 20, 20, 20)
                  : Colors.black12,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6),
                topRight: Radius.circular(24),
                bottomRight: Radius.circular(6),
                bottomLeft: Radius.circular(24),
              ),
            ),
            child: Icon(
              Icons.abc_sharp,
              color: _isActive
                  ? Colors.white
                  : const Color.fromARGB(221, 20, 20, 20),
            ),
          ),
          Text(
            widget.title,
            style: GoogleFonts.roboto(
              color: const Color.fromARGB(221, 20, 20, 20),
            ),
          ),
        ],
      ),
    );
  }
}
