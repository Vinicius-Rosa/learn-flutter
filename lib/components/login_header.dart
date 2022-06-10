import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Bem-vindo(a)!",
          style: TextStyle(
            fontSize: 32,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          "Informe suas credenciais abaixo e faça login no app",
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        Container(height: 40),
      ],
    );
  }
}
