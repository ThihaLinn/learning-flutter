import 'package:flutter/material.dart';

class LimitedSizedBox extends StatelessWidget {
  const LimitedSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Limitted Sized Box"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: LimitedBox(
              maxWidth: 300,
              maxHeight: 200,
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: LimitedBox(
                    maxWidth: 100,
                    maxHeight: 100,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: LimitedBox(
                    maxWidth: 100,
                    maxHeight: 100,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: LimitedBox(
                    maxWidth: 100,
                    maxHeight: 100,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: LimitedBox(
                    maxWidth: 100,
                    maxHeight: 100,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: LimitedBox(
                    maxWidth: 100,
                    maxHeight: 100,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
