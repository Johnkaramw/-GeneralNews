//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newsss_appp/widged/Category_listview_horezental.dart';
import 'package:newsss_appp/widged/Category_listview_vertical.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Category_listview_horezental(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 10),
            ),
            Category_listview_vertical(),
          ],
        ),
        //   child: Column(
        //     children: [
        //       Category_listview_horezental(),
        //       SizedBox(
        //         height: 15,
        //       ),
        //       Expanded(child: Category_listview_vertical()),
        //     ],
        //   ),
      ),
    );
  }
}
