import 'package:flutter/material.dart';

class AspectRatioView extends StatelessWidget {
  const AspectRatioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aspect Ratio"),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 4 / 3,
          child: Container(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
