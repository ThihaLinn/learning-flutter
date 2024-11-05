import 'package:flutter/material.dart';

class FittedBoxView extends StatelessWidget {
  const FittedBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fitted Box"),
      ),
      body: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 2,
          child: const FittedBox(
              fit: BoxFit.cover,
              child: Image(image: NetworkImage("https://shorturl.at/Cv7GZ")))),
    );
  }
}
