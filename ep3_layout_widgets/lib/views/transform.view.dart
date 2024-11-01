import 'package:flutter/material.dart';

class TransformView extends StatelessWidget {
  const TransformView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transform"),
      ),
      body: Center(
        child: Transform.translate(
          offset: const Offset(0, -40),
          child: Transform.scale(
            scale: 1.3,
            child: Transform.rotate(
              angle: 40,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
