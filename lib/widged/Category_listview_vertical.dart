import 'package:flutter/material.dart';
import 'package:newsss_appp/widged/Category_vertical.dart';

class Category_listview_vertical extends StatelessWidget {
  const Category_listview_vertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 15, (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: CategoryVertical(),
        );
      }),
    );
  }
}
