import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WelcomePage extends StatelessWidget {
  String email, password;
  WelcomePage({super.key, required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          "welcome to App",
          style: TextStyle(fontSize: 35, color: Colors.orange),
        ),
        const SizedBox(height: 20),
        Text(
          "Emali: $email",
          style: const TextStyle(fontSize: 25),
        ),
        Text(
          "password: $password",
          style: const TextStyle(fontSize: 25),
        )
      ]),
    ));
  }
}
