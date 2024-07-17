import 'package:frontend/domain/entities/article.dart';
import 'package:frontend/infrastructure/services/article_service.dart';

class ArticleController {

  final ArticleService _service;

  ArticleController(): _service = ArticleService();

  Future<List<Article>> getArticles () async {
    return await _service.getArticles();
  }
}