import 'package:flutter/material.dart';

class PaddingView extends StatelessWidget {
  const PaddingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Padding"),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 100, horizontal: 100),
        child: Placeholder(),
      ),
    );
  }
}
