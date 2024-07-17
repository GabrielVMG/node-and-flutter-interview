import 'package:frontend/domain/datasources/articles_datasource.dart';
import 'package:frontend/domain/entities/article.dart';
import 'package:frontend/domain/repositories/articles_repository.dart';


class ArticlesRepositoryImpl extends ArticlesRepository {

  final ArticlesDatasource articlesDatasource;

  ArticlesRepositoryImpl(this.articlesDatasource);

  @override
  Future<List<Article>> getArticles() {
    return articlesDatasource.getArticles();
  }

}