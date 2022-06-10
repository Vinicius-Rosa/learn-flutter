import 'package:flutter/material.dart';
import 'package:todo_app/components/login_header.dart';
import 'package:todo_app/components/custom_button.dart';
import 'package:todo_app/components/text_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String buttonText = "Entrar";
  String email = "";
  String password = "";

  changeEmail(text) {
    email = text;
  }

  changePassword(text) {
    password = text;
  }

  sendData() {
    setState(() {
      buttonText = "Enviando...";
    });

    if (email == "bakavini99@gmail.com" && password == "123456") {
      Navigator.of(context).pushReplacementNamed("/home");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const LoginHeader(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextInput(onChanged: changeEmail, labelText: "Email"),
                Container(height: 10),
                TextInput(
                  onChanged: changePassword,
                  obscureText: true,
                  labelText: "Senha",
                ),
                Container(height: 20),
                CustomButton(onPressed: sendData, buttonText: buttonText)
              ],
            )
          ],
        ),
      ),
    );
  }
}
