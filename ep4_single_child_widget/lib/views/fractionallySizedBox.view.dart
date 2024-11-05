import 'package:flutter/material.dart';

class FractionallySizeBoxView extends StatelessWidget {
  const FractionallySizeBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fractionally Sized Box"),
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 0.25,
          child: Container(
            alignment: Alignment.center,
            color: Colors.blue,
            child: const Text(
              "HOVER",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
