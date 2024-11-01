import 'package:flutter/material.dart';

class AlighmentWidget extends StatelessWidget {
  const AlighmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alighment"),
      ),
      body: const Align(
        child: FlutterLogo(
          size: 200,
        ),
      ),
    );
  }
}
