import 'package:ep4_single_child_widget/views/drawer.widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Single Box Widget"),
      ),
      drawer: const SideBarMenu(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: const Color.fromARGB(255, 73, 4, 139),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 150),
            Text("Learning Flutter",
                style: TextStyle(color: Colors.white, fontSize: 30))
          ],
        ),
      ),
    );
  }
}
