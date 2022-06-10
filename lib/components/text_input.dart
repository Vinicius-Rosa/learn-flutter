import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  String labelText = "";
  bool obscureText = false;
  void Function(String)? onChanged = (String value) {};

  TextInput({
    Key? key,
    required this.onChanged,
    required this.labelText,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
      ),
    );
  }
}
