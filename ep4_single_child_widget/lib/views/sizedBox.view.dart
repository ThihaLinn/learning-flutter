import 'package:flutter/material.dart';

class SizedBoxView extends StatelessWidget {
  const SizedBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sized Box"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox.square(dimension: 150, child: FlutterLogo()),
            SizedBox(
              child: Text(
                "learning Size Box",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton.icon(
                onPressed: () => {},
                label: const Text("Click me"),
                icon: const Icon(Icons.thumb_up),
              ),
            )
          ],
        ),
      ),
    );
  }
}
