import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newss_app/models/article_model.dart';
import 'package:newss_app/services/news_service.dart';
import 'package:newss_app/widgets/news_tile.dart';

class NewsListVeiw extends StatefulWidget {
  const NewsListVeiw({super.key, required this.category});
  final String category;
  @override
  State<NewsListVeiw> createState() => _NewsListVeiwState();
}

class _NewsListVeiwState extends State<NewsListVeiw> {
  List<ArticleModel> articles = [];
  bool isloading = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getNews(category: widget.category);
    isloading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isloading
        ? const Center(child: CircularProgressIndicator())
        : articles.isNotEmpty
            ? ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return NewsTile(
                    articleModel: articles[index],
                  );
                })
            : Center(
              child: Text('Oops There Was An Error, Try Later!!!',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            );
  }
}
