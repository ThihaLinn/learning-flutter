import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Container")),
      body: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 200, bottom: 200),
        color: const Color.fromARGB(255, 166, 11, 223),
        child: const FlutterLogo(
          size: 150,
        ),
      ),
    );
  }
}
