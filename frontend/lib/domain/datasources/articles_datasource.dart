import 'package:frontend/domain/entities/article.dart';

abstract class ArticlesDatasource {

  Future<List<Article>> getArticles();

}