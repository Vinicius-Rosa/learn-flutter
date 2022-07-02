import 'package:flutter/material.dart';

class BookingHeading extends StatelessWidget {
  const BookingHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Fernando de Noronha",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              Icon(Icons.star, color: Colors.amber, size: 16),
              SizedBox(width: 5),
              Text(
                "4,87",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 12,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
