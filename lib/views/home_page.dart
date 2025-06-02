import 'package:flutter/material.dart';
import 'package:newsss_appp/widged/Category_listview_builder.dart';
import 'package:newsss_appp/widged/Category_listview_horezental.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Category_listview_horezental(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 10),
            ),
            Category_listview_builder(
              Cateogry: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
