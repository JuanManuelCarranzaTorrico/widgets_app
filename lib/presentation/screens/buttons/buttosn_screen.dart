import 'package:flutter/material.dart';

class ButtosnScreen extends StatelessWidget {
  static const String name= 'buttons_screen';
  const ButtosnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: const Placeholder(),
    );
  }
}