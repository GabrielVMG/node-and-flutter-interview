import 'package:frontend/domain/entities/article.dart';

abstract class ArticlesRepository {

  Future<List<Article>> getArticles();

}