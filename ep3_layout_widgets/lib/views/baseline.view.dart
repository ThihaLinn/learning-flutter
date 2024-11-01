import 'package:flutter/material.dart';

class BaseLineView extends StatelessWidget {
  const BaseLineView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BaseLine"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40),
            color: Colors.blueGrey,
            width: 200,
            height: 200,
            child: const Baseline(
              baseline: 0,
              baselineType: TextBaseline.ideographic,
              child: Text(
                "Hope",
                style: TextStyle(
                    color: Color.fromARGB(255, 219, 10, 242), fontSize: 40),
              ),
            ),
          ),
          const Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Thiha",
                style: TextStyle(fontSize: 50),
              ),
              Baseline(
                  baseline: 40,
                  baselineType: TextBaseline.alphabetic,
                  child: Text("HOVER")),
              Text(
                "Linn",
                style: TextStyle(fontSize: 50),
              )
            ],
          ))
        ],
      ),
    );
  }
}
