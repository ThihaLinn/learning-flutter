import 'package:ep2_user_profile/model/profile.modal.dart';
import 'package:flutter/material.dart';

class ProfileViewData extends InheritedWidget {
  const ProfileViewData(
      {super.key, required super.child, required this.profile});

  final Profile profile;

  static ProfileViewData? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ProfileViewData>();
  }

  @override
  bool updateShouldNotify(covariant ProfileViewData oldWidget) {
    return profile != oldWidget.profile;
  }
}

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [ProfileBackground(), ProfileHeader(), ProfileBody()],
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 4 / 9,
      child: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 60),
        child: ClipOval(
          child: Image.asset(
            ProfileViewData.of(context)!
                .profile
                .imageProfile, // Replace with your image path
            width: 200, // Set width and height to equal values for a circle
            height: 200,
            fit: BoxFit.cover, // Ensures the image covers the circle
          ),
        ),
      ),
    );
  }
}

class ProfileBackground extends StatelessWidget {
  const ProfileBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        DecoratedBox(
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 3, 43, 77),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 3 / 4,
            width: MediaQuery.of(context).size.width,
          ),
        )
      ],
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 3 / 7, left: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileBodyItem(
              label: "Name", value: ProfileViewData.of(context)!.profile.name),
          ProfileBodyItem(
              label: "Phone Number",
              value: ProfileViewData.of(context)!.profile.phoneNumber),
          ProfileBodyItem(
              label: "Name", value: ProfileViewData.of(context)!.profile.email),
          ProfileBodyItem(
              label: "Address",
              value: ProfileViewData.of(context)!.profile.address)
        ],
      ),
    );
  }
}

class ProfileBodyItem extends StatelessWidget {
  const ProfileBodyItem({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 16)),
        Text(
          value,
          style: const TextStyle(color: Colors.white, fontSize: 24),
        )
      ],
    );
  }
}
