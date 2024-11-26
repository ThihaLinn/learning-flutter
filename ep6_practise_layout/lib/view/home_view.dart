import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text("Flutter layout Demo"),
      ),
      body: Column(
        children: [
          Image(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 3 / 7,
              fit: BoxFit.cover,
              image: const NetworkImage(
                  "https://steamuserimages-a.akamaihd.net/ugc/1287416499680413222/2AC521BF744C3B31C9829DA0B8616F4C67FBD0C4/?imw=512&&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false")),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Column(
              children: [
                HeadingWidget(),
                buttonWidget(),
                Text(
                    "Juggernaut, often referred to as \"Jug\" or \"Yurnero the Juggernaut,\" is a highly popular hero in Dota 2 known for his high damage potential, survivability, and ability to sustain himself in combat. He is an Agility hero who specializes in dealing physical damage with his attacks and abilities. Juggernaut is versatile, making him a strong pick in many situations, especially as a safe-lane carry.")
              ],
            ),
          )
        ],
      ),
    );
  }
}

class buttonWidget extends StatelessWidget {
  const buttonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          button(
            icon: Icons.task_alt_outlined,
            label: "Pick",
          ),
          button(
            icon: Icons.dangerous_outlined,
            label: "Ban",
          ),
          button(
            icon: Icons.sign_language_sharp,
            label: "Suggest",
          ),
        ],
      ),
    );
  }
}

class button extends StatelessWidget {
  final IconData icon;
  final String label;

  const button({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: const Color.fromARGB(255, 39, 84, 121),
        ),
        Text(
          label,
          style: const TextStyle(
            color: Color.fromARGB(255, 39, 84, 121),
          ),
        )
      ],
    );
  }
}

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Juggernaut",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const Text(
              "One of the best carry in Dota",
              style: TextStyle(color: Colors.blueGrey, fontSize: 12),
            ),
          ],
        ),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text("45")
          ],
        )
      ],
    );
  }
}
