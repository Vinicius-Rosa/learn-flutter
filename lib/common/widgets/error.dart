import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  final String error;

  const Error({Key? key, required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(error),
      ),
    );
  }
}
