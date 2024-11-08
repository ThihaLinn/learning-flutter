import 'package:ep5_multi_chil_dwidget/common/page_demo.dart';
import 'package:flutter/material.dart';

class IndexedStackView extends StatefulWidget {
  const IndexedStackView({super.key});

  @override
  State<IndexedStackView> createState() => _IndexedStackViewState();
}

class _IndexedStackViewState extends State<IndexedStackView> {
  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return PageDemo(
      title: "Indexed Stack",
      child: Column(
        children: [
          IndexedStack(
            index: _index,
            children: [
              _getImage(
                  "https://i.pinimg.com/736x/5d/34/15/5d34151d00badce270c1ab12c2da522e.jpg"),
              _getImage(
                  "https://i.pinimg.com/736x/c1/6e/4c/c16e4cd84db5ab84339701785d4fefd4.jpg"),
              _getImage(
                  "https://wallpapers.com/images/hd/dota-2-lina-2900-x-4060-wallpaper-4b5h5r5cgg5f8m56.jpg"),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: ElevatedButton(
                      onPressed: () => {setIndex(0)},
                      child: const Text("Juggernaut")),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: ElevatedButton(
                      onPressed: () => {setIndex(1)},
                      child: const Text("Invoker")),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: ElevatedButton(
                      onPressed: () => {setIndex(2)},
                      child: const Text("Lina")),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _getImage(String src) {
    return Image(
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.height,
        fit: BoxFit.cover,
        image: NetworkImage(src));
  }

  setIndex(int index) {
    setState(() {
      _index = index;
    });
  }
}
