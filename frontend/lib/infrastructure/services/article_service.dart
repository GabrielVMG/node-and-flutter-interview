import 'package:frontend/domain/entities/article.dart';
import 'package:frontend/infrastructure/datasources/articles_datasource_impl.dart';
import 'package:frontend/infrastructure/repositories/articles_repository_impl.dart';

class ArticleService {
  final ArticlesRepositoryImpl _repos;

  ArticleService(): _repos = ArticlesRepositoryImpl(ArticlesDatasourceImpl());

  Future<List<Article>> getArticles () => _repos.getArticles();
}