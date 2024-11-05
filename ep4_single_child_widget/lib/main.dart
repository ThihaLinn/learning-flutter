import 'package:ep4_single_child_widget/views/constraintBox.view.dart';
import 'package:ep4_single_child_widget/views/fitted_box_view.dart';
import 'package:ep4_single_child_widget/views/fractionallySizedBox.view.dart';
import 'package:ep4_single_child_widget/views/home.view.dart';
import 'package:ep4_single_child_widget/views/limited_sized_box.view.dart';
import 'package:ep4_single_child_widget/views/overflow_box_view.dart';
import 'package:ep4_single_child_widget/views/sizedBox.view.dart';
import 'package:ep4_single_child_widget/views/sized_overflow_box_view.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (_) => const HomeView(),
      "/sizedBox": (_) => const SizedBoxView(),
      "/constraintBox": (_) => const ConstraintBoxView(),
      "/fractional": (_) => const FractionallySizeBoxView(),
      "/limitedSizedBox": (_) => const LimitedSizedBox(),
      "/fittedBox": (_) => const FittedBoxView(),
      "/overflowBox": (_) => const OverflowBoxView(),
      "/sizedOverflowBox": (_) => const SizedOverflowBoxView()
    },
  ));
}
