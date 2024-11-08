import 'package:ep5_multi_chil_dwidget/common/page_demo.dart';
import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  GridViewDemo({super.key});

  final photoList = [
    "https://dmarket.com/blog/best-dota2-wallpapers/dota-2-wallpapers-hd_50129_hu10780282637180469663.jpg",
    "https://akm-img-a-in.tosshub.com/sites/itgaming/resources/202409/dota-2-kez230924033752.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnPnoG6MdgaFyCfTaQVcRRDyCLaQBzRLAj4Q&s",
    "https://www.theloadout.com/wp-content/sites/theloadout/2021/02/dota-2-ranks-champion-slark.jpeg",
    "https://wallpapercave.com/wp/wp2698474.jpg",
    "https://i.pinimg.com/originals/ab/db/5b/abdb5b45a0ffd08b67a05d02e63a60f2.jpg",
    "https://i.pinimg.com/originals/76/02/7c/76027c44f38e064d1fa3d2099338515a.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZtApAEFrdVyrx5zLDd79BwB3hiTfMjtUeOA&s"
  ];

  @override
  Widget build(BuildContext context) {
    return PageDemo(
        title: "Grid View",
        child: GridView.builder(
          padding: EdgeInsets.all(5),
          itemCount: photoList.length,
          itemBuilder: (context, index) => _getImage(photoList[index]),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
        ));
  }

  Widget _getImage(String src) {
    return Image(
      image: NetworkImage(src),
      fit: BoxFit.cover,
    );
  }
}
