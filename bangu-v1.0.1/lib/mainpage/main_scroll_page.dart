import 'package:flutter/material.dart';

import 'main_top_location.dart';
import 'main_mid_category.dart';
import 'main_scroll_view.dart';

class MainScrollPage extends StatelessWidget {
  const MainScrollPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return const SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  MainTopLocation(),
                  MainMidCategory(),
                  MainScrollView()
                ]
              ));
        }));
  }
}
