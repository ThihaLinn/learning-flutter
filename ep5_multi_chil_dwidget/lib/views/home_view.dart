import 'package:ep5_multi_chil_dwidget/views/side_bar_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Multi Child Widget"),
        ),
        drawer: const SideBarView(),
        body: OrientationBuilder(
          builder: (context, orientation) => orientation == Orientation.portrait
              ? _Portrait(context)
              : _landscape(context),
        ));
  }

  Widget _Portrait(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FlutterLogo(
            size: 250,
          ),
          Text(
            "Fullstack Developer",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            "Thiha Linn",
            style: Theme.of(context).textTheme.titleSmall,
          )
        ],
      ),
    );
  }

  Widget _landscape(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FlutterLogo(
            size: 160,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Fullstack Developer",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Thiha Linn",
                style: Theme.of(context).textTheme.titleSmall,
              )
            ],
          )
        ],
      ),
    );
  }
}
