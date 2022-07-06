import 'package:animal_wiki/widgets/widgets.dart';

import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void getStarted() {
    Navigator.pushReplacementNamed(context, "/login");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const LoginHeader(),
          const SizedBox(height: 30),
          Center(child: LoginTitle("Animal Wiki")),
          const SizedBox(height: 30),
          Center(child: LoginSubtitle("What do you know about the")),
          Center(child: LoginSubtitle("animal kingdom?")),
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: GradientButton(
              label: "Get Started",
              onPress: getStarted,
            ),
          )
        ],
      ),
    );
  }
}
