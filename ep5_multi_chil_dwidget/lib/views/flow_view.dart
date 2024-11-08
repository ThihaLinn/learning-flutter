import 'package:ep5_multi_chil_dwidget/common/page_demo.dart';
import 'package:flutter/material.dart';

class FlowView extends StatelessWidget {
  const FlowView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDemo(
        title: "Flow",
        child: Flow(
          delegate: CustomDelegate(),
          children: [
            _getIcon(Icons.food_bank),
            _getIcon(Icons.badge_sharp),
            _getIcon(Icons.shop),
            _getIcon(Icons.car_crash),
            _getIcon(Icons.bed),
            _getIcon(Icons.read_more)
          ],
        ));
  }

  Widget _getIcon(IconData icon) {
    return CircleAvatar(
        radius: 30,
        child: Icon(
          icon,
          size: 30,
        ));
  }
}

class CustomDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    var dy = 0.0;
    var dx = 0.0;

    for (var i = 0; i < context.childCount; i++) {
      if (i > 0) {
        dy += i + context.getChildSize(i)!.height;
        dx += i + context.getChildSize(i)!.width;
      }

      context.paintChild(i, transform: Matrix4.translationValues(dx, dy, 0));
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return true;
  }
}
