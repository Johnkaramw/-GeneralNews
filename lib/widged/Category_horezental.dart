import 'package:flutter/material.dart';
import 'package:newsss_appp/models/class_category_hor.dart';
import 'package:newsss_appp/views/Navigator_list_horezintal.dart';

class CategoryHorezental extends StatelessWidget {
  CategoryHorezental({super.key, required this.Categor});

  final CategoryModelHor Categor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return NavigatorListHorezintal(Category: Categor.name);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 120,
          width: 190,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Categor.image), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Text(
              Categor.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 238, 0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
