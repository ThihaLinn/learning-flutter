import 'package:ep5_multi_chil_dwidget/common/page_demo.dart';
import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDemo(
      title: "Column View",
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 70,
              color: Colors.blue,
            ),
            Container(
              width: 60,
              height: 70,
              color: Colors.blue,
            ),
            Container(
              width: 70,
              height: 70,
              color: Colors.blue,
            ),
            Container(
              width: 80,
              height: 70,
              color: Colors.blue,
            ),
            Container(
              width: 90,
              height: 70,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 70,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
