import 'package:flutter/material.dart';
import 'package:newsss_appp/models/class_category_hor.dart';
import 'package:newsss_appp/widged/Category_horezental.dart';

class Category_listview_horezental extends StatelessWidget {
  const Category_listview_horezental({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final List<CategoryModelHor> category = [
      CategoryModelHor(
        image: 'assets/images/health.jpg',
        name: 'health',
      ),
      CategoryModelHor(
        image: 'assets/images/sports.jpg',
        name: 'Sports',
      ),
      CategoryModelHor(
        image: 'assets/images/business.webp',
        name: 'Business',
      ),
      CategoryModelHor(
        image: 'assets/images/general.jpg',
        name: 'General',
      ),
      CategoryModelHor(
        image: 'assets/images/technology.jpg',
        name: 'Technology',
      ),
      CategoryModelHor(
        image: 'assets/images/science.png',
        name: 'Science',
      ),
    ];

    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: CategoryHorezental(
                Categor: category[index],
              ),
            );
          }),
    );
  }
}
