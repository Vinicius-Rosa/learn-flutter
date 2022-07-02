import 'package:flutter/material.dart';
import 'package:pokedex/common/widgets/booking_heading.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            height: 350,
            width: 250,
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(60),
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              image: const DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1583078576654-8d59f064b6b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            height: 350,
            width: 250,
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(60),
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.grey.withOpacity(0.0),
                  const Color.fromARGB(220, 0, 0, 0),
                ],
                stops: const [0.0, 1.0],
              ),
            ),
            child: const BookingHeading(),
          ),
        ],
      ),
    );
  }
}
