import 'package:ep5_multi_chil_dwidget/common/page_demo.dart';
import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDemo(
        title: "Stack Widget",
        child: Stack(
          children: [
            Container(
              height: 200,
              color: Colors.blueGrey,
            ),
            Baseline(
              baseline: 180,
              baselineType: TextBaseline.alphabetic,
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Thiha Linn",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const Baseline(
              baseline: 260,
              baselineType: TextBaseline.alphabetic,
              child: Padding(
                padding: EdgeInsets.only(left: 30),
                child: ClipOval(
                  child: Image(
                      width: 130,
                      height: 130,
                      image: NetworkImage(
                          "https://avatars.githubusercontent.com/u/125750776?v=4")),
                ),
              ),
            )
          ],
        ));
  }
}
