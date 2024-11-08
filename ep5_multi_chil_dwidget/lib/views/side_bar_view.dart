import 'package:flutter/material.dart';

class SideBarView extends StatelessWidget {
  const SideBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Text("HO"),
                ),
                accountName: Text("HOVER"),
                accountEmail: Text("hover@gmil.com")),
            ListTile(
              title: const Text("Row"),
              onTap: () => Navigator.of(context).pushNamed("/row"),
            ),
            ListTile(
              title: const Text("Column"),
              onTap: () => Navigator.of(context).pushNamed("/column"),
            ),
            ListTile(
              title: const Text("Stack"),
              onTap: () => Navigator.of(context).pushNamed("/stack"),
            ),
            ListTile(
              title: const Text("Indexed Stack"),
              onTap: () => Navigator.of(context).pushNamed("/indexedStack"),
            ),
            ListTile(
              title: const Text("Flow"),
              onTap: () => Navigator.of(context).pushNamed("/flow"),
            ),
            ListTile(
              title: const Text("List View"),
              onTap: () => Navigator.of(context).pushNamed("/listView"),
            ),
            ListTile(
              title: const Text("Grid View"),
              onTap: () => Navigator.of(context).pushNamed("/gridView"),
            ),
            ListTile(
              title: const Text("Layout Builder"),
              onTap: () => Navigator.of(context).pushNamed("/layout"),
            ),
          ],
        ),
      ),
    );
  }
}
