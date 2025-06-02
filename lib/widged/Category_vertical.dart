import 'package:flutter/material.dart';
import 'package:newsss_appp/models/article_model.dart';

class CategoryVertical extends StatelessWidget {
  const CategoryVertical({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 400,
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(articleModel.image),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 20, right: 5),
          child: Text(articleModel.title),
        )
      ],
    );
  }
}
