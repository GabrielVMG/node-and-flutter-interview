import 'package:flutter/material.dart';
import 'package:frontend/domain/entities/article.dart';
import 'package:frontend/domain/use_cases/article_controller.dart';
import 'package:frontend/presentation/widgets/article_item_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ArticleController _articleController = ArticleController();
  List<Article> _articles = [];


  @override
  void initState() {
    super.initState();
    getArticles();
  }

  void getArticles() async {
    _articles = await _articleController.getArticles();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Articles APP'),
      ),
      body: ListView.builder(
        itemCount: _articles.length,
        itemBuilder: (context, index) {
          return ArticleItemWidget(
            title: _articles[index].title,
            author: _articles[index].author,
            description: _articles[index].description,
            urlToImage: _articles[index].urlToImage,
          );
        },
      ),
    );
  }
}