import 'package:flutter/material.dart';
import 'package:newsss_appp/models/article_model.dart';
import 'package:newsss_appp/widged/Category_vertical.dart';

class Category_listview_vertical extends StatelessWidget {
 final List<ArticleModel> articals;
   Category_listview_vertical( this.articals);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articals.length,
          (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: CategoryVertical(
            articleModel: articals[index],
          ),
        );
      }),
    );
  }
}
