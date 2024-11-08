import 'package:ep5_multi_chil_dwidget/common/page_demo.dart';
import 'package:flutter/material.dart';

class LisViewWidget extends StatelessWidget {
  final list = ["Java", "Java Script", "Dart", "Type Script", "C++"];

  LisViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDemo(
        title: "List View",
        child: ListView.separated(
            itemCount: list.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(child: Text(index.toString())),
                  title: Text(list[index]),
                )));
  }
}
