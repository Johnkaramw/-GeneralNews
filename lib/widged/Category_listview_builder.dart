import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsss_appp/models/article_model.dart';
import 'package:newsss_appp/services/news_service.dart';
import 'package:newsss_appp/widged/Category_listview_vertical.dart';

class Category_listview_builder extends StatefulWidget {
  const Category_listview_builder({
    super.key,
    required this.Cateogry,
  });

  final String Cateogry;

  @override
  State<Category_listview_builder> createState() =>
      _Category_listview_builderState();
}

class _Category_listview_builderState extends State<Category_listview_builder> {
  var futuer;
  @override
  void initState() {
    super.initState();
    futuer = NewsService(Dio()).getNews(
      category: widget.Cateogry,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: futuer,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Category_listview_vertical(
              snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
                child: Center(child: Text('oops there was Error, try again')));
          } else {
            return SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
