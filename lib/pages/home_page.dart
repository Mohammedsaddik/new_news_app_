import 'package:flutter/material.dart';
import 'package:news_app/widgets/New_ListViewBuider.dart';
import 'package:news_app/widgets/category_listView.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'News',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Cloud',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32.0,
              ),
            ),
            NewListViewBuider(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
