import 'package:ep2_user_profile/model/profile.modal.dart';
import 'package:ep2_user_profile/views/profile.view.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  Profile profile = Profile(
      imageProfile: "images/profile.png",
      name: "Thiha Linn",
      phoneNumber: "098778628450",
      email: "linthiha964@gmail.com",
      address: "No(36) Myasapel Street");

  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ProfileViewData(profile: profile, child: const ProfileView()),
        )),
  );
}
