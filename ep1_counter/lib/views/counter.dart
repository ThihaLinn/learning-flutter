import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Image(
            image: const AssetImage("images/calculator_image.jpg"),
            width: double.infinity,
            fit: BoxFit.cover,
            height: screenHeight * 1 / 2,
          ),
          const Expanded(child: CounterBody())
        ],
      ),
    );
  }
}

class CounterBody extends StatefulWidget {
  const CounterBody({super.key});

  @override
  State<CounterBody> createState() => _CounterBodyState();
}

class _CounterBodyState extends State<CounterBody> {
  var _count = 0;

  countUp() {
    setState(() {
      _count++;
    });
  }

  countDown() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Stateless Widget",
          style: TextStyle(fontSize: 30),
        ),
        Text(
          "Count is $_count",
          style: const TextStyle(fontSize: 25),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: countDown, child: const Text("count Down")),
            ElevatedButton(onPressed: countUp, child: const Text("count Up"))
          ],
        )
      ],
    );
  }
}
