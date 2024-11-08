import 'package:ep5_multi_chil_dwidget/common/page_demo.dart';
import 'package:flutter/material.dart';

class RowView extends StatelessWidget {
  const RowView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDemo(
        title: "Row Widget",
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 50,
                height: 20,
                color: Colors.red,
              ),
              Container(
                width: 50,
                height: 40,
                color: Colors.red,
              ),
              Container(
                width: 50,
                height: 60,
                color: Colors.red,
              ),
              Container(
                width: 50,
                height: 80,
                color: Colors.red,
              ),
              Container(
                width: 50,
                height: 100,
                color: Colors.red,
              ),
              Container(
                width: 50,
                height: 120,
                color: Colors.red,
              ),
              Container(
                width: 50,
                height: 140,
                color: Colors.red,
              ),
              Container(
                width: 50,
                height: 160,
                color: Colors.red,
              ),
            ],
          ),
        ));
  }
}
