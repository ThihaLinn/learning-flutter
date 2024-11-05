import 'package:flutter/material.dart';

class ConstraintBoxView extends StatelessWidget {
  const ConstraintBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Constraint Box"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Image(image: NetworkImage("https://shorturl.at/YxPuP")),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 310, minWidth: 310),
                child: const Text(
                    "A collection of the top 64 Dota 2 wallpapers and backgrounds available for download for free. We hope you enjoy our growing collection of HD images to use as a background or home screen for your smartphone or computer. Please contact us if you want to publish a Dota 2"),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(minWidth: 310, maxWidth: 310),
              child: FilledButton(
                onPressed: () => {},
                style: const ButtonStyle(
                    shape: WidgetStatePropertyAll(BeveledRectangleBorder())),
                child: const Text(
                  "Save Image",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
