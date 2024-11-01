import 'package:ep3_layout_widgets/views/alighment.view.dart';
import 'package:ep3_layout_widgets/views/aspectRatio.view.dart';
import 'package:ep3_layout_widgets/views/baseline.view.dart';
import 'package:ep3_layout_widgets/views/container.view.dart';
import 'package:ep3_layout_widgets/views/home.view.dart';
import 'package:ep3_layout_widgets/views/padding.view.dart';
import 'package:ep3_layout_widgets/views/transform.view.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (_) => const HomeWidget(),
      "/alighment": (_) => const AlighmentWidget(),
      "/padding": (_) => const PaddingView(),
      "/container": (_) => const ContainerView(),
      "/baseline": (_) => const BaseLineView(),
      "/aspectRatio": (_) => const AspectRatioView(),
      "/transform": (_) => const TransformView()
    },
    initialRoute: "/",
  ));
}
