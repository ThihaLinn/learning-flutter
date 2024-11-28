import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text("HO"),
              ),
              accountName: Text("Hover"),
              accountEmail: Text("hover13@gmail.com"))
        ],
      ),
    );
  }
}
