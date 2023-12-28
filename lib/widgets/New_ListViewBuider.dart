import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/news_servise/news_services.dart';
import 'package:news_app/widgets/news_listNiew.dart';

class NewListViewBuider extends StatefulWidget {
  const NewListViewBuider({super.key, required this.category});
  final String category;

  @override
  State<NewListViewBuider> createState() => _NewListViewBuiderState();
}

class _NewListViewBuiderState extends State<NewListViewBuider> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsSwrvice(Dio()).getNews(
      category: widget.category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
      future: future,
      builder: (BuildContext, AsyncSnapshot) {
        if (AsyncSnapshot.hasData) {
          return NewsListView(
            articals: AsyncSnapshot.data ?? [],
          );
        } else if (AsyncSnapshot.hasError) {
          return const SliverToBoxAdapter(
              child: Center(child: Text('Error!!!!!')));
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
