import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
//import 'package:news_app/models/articles_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/exceptions_ui.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewListViewBuilder extends StatefulWidget {
  const NewListViewBuilder({
    super.key,
    required this.category,
  });

  // List<ArticlesModel> articles = [];
  //bool isLoading = true;

  //@override
  // void initState() {
  //   getMethod();
  //   super.initState();
  // }

  // Future<void> getMethod() async {
  //   articles = await NewsServiece(dio: Dio()).getNews();
  //   isLoading = false;
  //   setState(() {});
  // }

  final String category;
  @override
  State<NewListViewBuilder> createState() => _NewListViewBuilderState();
}

class _NewListViewBuilderState extends State<NewListViewBuilder> {
  // ignore: prefer_typing_uninitialized_variables
  var future;
  @override
  void initState() {
    future = NewsServiece(dio: Dio()).getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewListView(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return exceptionsUi();
          } else {
            return const SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()));
          }
        });

    // return isLoading
    //     ? const SliverFillRemaining(
    //         child: Center(child: CircularProgressIndicator()))
    //     : articles.isNotEmpty
    //         ? NewListView(articles: articles)
    //         : ExceptionsUi();
  }
}
