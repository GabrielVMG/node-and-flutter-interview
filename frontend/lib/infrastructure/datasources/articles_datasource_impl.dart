
import 'package:dio/dio.dart';
import 'package:frontend/domain/datasources/articles_datasource.dart';
import 'package:frontend/domain/entities/article.dart';
import 'package:frontend/infrastructure/mappers/article_mapper.dart';
import 'package:frontend/infrastructure/models/article_api/article_api_response.dart';

class ArticlesDatasourceImpl extends ArticlesDatasource {
  final dio = Dio(BaseOptions(
    baseUrl: 'http://192.168.0.9:3000'
  ));

  @override
  Future<List<Article>> getArticles() async {
    final response = await dio.get('/articles');
    final d =  articleApiResponseFromJsonList(response.data);
    final List<Article> articles = d.map((a) => ArticleMapper.articleApiToEntity(a)).toList();
    return articles;
  }

}