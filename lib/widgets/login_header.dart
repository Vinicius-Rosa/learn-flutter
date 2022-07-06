import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 280,
      alignment: Alignment.topRight,
      child: Positioned(
        top: 0,
        right: 0,
        child: Image.asset("images/unsplash_lWUYwB0E9co.png"),
      ),
    );
  }
}
