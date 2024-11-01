import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learning flutter"),
      ),
      drawer: const SideBarMenu(),
      body: Container(
        color: const Color.fromARGB(255, 127, 125, 197),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(
              size: 240,
            ),
            Text("Open Flutter",
                style: Theme.of(context).textTheme.headlineMedium)
          ],
        ),
      ),
    );
  }
}

class SideBarMenu extends StatelessWidget {
  const SideBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text("HOVER"),
              ),
              accountName: Text("Hover"),
              accountEmail: Text("hover@gmail.com")),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    title: const Text("Aligment"),
                    onTap: () => Navigator.of(context).pushNamed("/alighment"),
                  ),
                  ListTile(
                    title: const Text("Padding"),
                    onTap: () => Navigator.of(context).pushNamed("/padding"),
                  ),
                  ListTile(
                    title: const Text("Container"),
                    onTap: () => Navigator.of(context).pushNamed("/container"),
                  ),
                  ListTile(
                    title: const Text("Base Line"),
                    onTap: () => Navigator.of(context).pushNamed("/baseline"),
                  ),
                  ListTile(
                    title: const Text("Aspect Ratio"),
                    onTap: () =>
                        Navigator.of(context).pushNamed("/aspectRatio"),
                  ),
                  ListTile(
                    title: const Text("Transform"),
                    onTap: () => Navigator.of(context).pushNamed("/transform"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
