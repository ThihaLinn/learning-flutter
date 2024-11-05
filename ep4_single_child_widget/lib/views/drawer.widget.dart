import 'package:flutter/material.dart';

class SideBarMenu extends StatelessWidget {
  const SideBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: Text("HO"),
            ),
            accountName: Text("Hover"),
            accountEmail: Text("hover@gmail.com")),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: const Text("Sized Box Widget"),
                  onTap: () => Navigator.of(context).pushNamed("/sizedBox"),
                ),
                ListTile(
                  title: const Text("Constrained Box Widget"),
                  onTap: () =>
                      Navigator.of(context).pushNamed("/constraintBox"),
                ),
                ListTile(
                  title: const Text("Fractionally Sized Box Widget"),
                  onTap: () => Navigator.of(context).pushNamed("/fractional"),
                ),
                ListTile(
                  title: const Text("Limited Sized Box Widget"),
                  onTap: () =>
                      Navigator.of(context).pushNamed("/limitedSizedBox"),
                ),
                ListTile(
                  title: const Text("Fitted Box Widget"),
                  onTap: () => Navigator.of(context).pushNamed("/fittedBox"),
                ),
                ListTile(
                  title: const Text("Overflow Box Widget"),
                  onTap: () => Navigator.of(context).pushNamed("/overflowBox"),
                ),
                ListTile(
                  title: const Text("Sized overflow Widget"),
                  onTap: () =>
                      Navigator.of(context).pushNamed("/sizedOverflowBox"),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
