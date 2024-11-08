import 'package:ep5_multi_chil_dwidget/views/column_view.dart';
import 'package:ep5_multi_chil_dwidget/views/flow_view.dart';
import 'package:ep5_multi_chil_dwidget/views/grid_view.dart';
import 'package:ep5_multi_chil_dwidget/views/home_view.dart';
import 'package:ep5_multi_chil_dwidget/views/indexed_stack_view.dart';
import 'package:ep5_multi_chil_dwidget/views/layout_builder_Demo.dart';
import 'package:ep5_multi_chil_dwidget/views/lis_view.dart';
import 'package:ep5_multi_chil_dwidget/views/row_view.dart';
import 'package:ep5_multi_chil_dwidget/views/stack_view.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (_) => const HomeView(),
      "/row": (_) => const RowView(),
      "/column": (_) => const ColumnView(),
      "/stack": (_) => const StackView(),
      "/indexedStack": (_) => const IndexedStackView(),
      "/listView": (_) => LisViewWidget(),
      "/gridView": (_) => GridViewDemo(),
      "/flow": (_) => const FlowView(),
      "/layout": (_) => LayoutBuilderDemo()
    },
  ));
}
