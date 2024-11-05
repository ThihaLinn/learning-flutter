import 'package:flutter/material.dart';

class OverflowBoxView extends StatelessWidget {
  const OverflowBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Overflow Box"),
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          width: 300,
          height: 100,
          child: OverflowBox(
            minHeight: 100,
            maxHeight: 300,
            minWidth: 100,
            maxWidth: 300,
            child: Container(
              width: 100,
              height: 300,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
