import 'package:flutter/cupertino.dart';
import 'package:pokedex/common/widgets/booking_card.dart';

class BookingList extends StatelessWidget {
  const BookingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          BookingCard(),
          BookingCard(),
          BookingCard(),
          BookingCard(),
          BookingCard(),
        ],
      ),
    );
  }
}
