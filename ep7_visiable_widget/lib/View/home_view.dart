import 'package:ep7_visiable_widget/View/drawer_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isVisable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Visible Widget"),
      ),
      drawer: const DrawerView(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () => {
                          setState(() {
                            isVisable = true;
                          })
                        },
                    child: const Text("Show")),
                ElevatedButton(
                    onPressed: () => {
                          setState(() {
                            isVisable = false;
                          })
                        },
                    child: const Text("Hide"))
              ],
            ),
          ),
          Container(
            width: 200,
            height: 300,
            child: Visibility(
                visible: isVisable, child: Image.asset("images/profile.jpg")),
          )
        ],
      ),
    );
  }
}
