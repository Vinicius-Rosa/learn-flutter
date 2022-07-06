import 'package:animal_wiki/widgets/widgets.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const LoginHeader(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                LoginTitle("Welcome"),
                LoginTitle("Back!"),

                // Email
                const SizedBox(height: 30),
                Input(label: "Email"),

                // Senha
                const SizedBox(height: 30),
                Input(label: "Senha", hideText: true),

                // Submit
                const SizedBox(height: 40),
                GradientButton(
                  label: "Login",
                  onPress: () {},
                ),

                const SizedBox(height: 60),
              ],
            ),
          )
        ],
      ),
    );
  }
}
