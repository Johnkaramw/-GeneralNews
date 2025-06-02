import 'package:flutter/material.dart';
import 'package:newsss_appp/widged/Category_listview_builder.dart';

class NavigatorListHorezintal extends StatelessWidget {
  NavigatorListHorezintal({super.key, required this.Category});
  final String Category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          Category_listview_builder(
            Cateogry: Category,
          ),
        ],
      ),
    );
  }
}
