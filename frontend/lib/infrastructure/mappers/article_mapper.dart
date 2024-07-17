import 'package:frontend/domain/entities/article.dart';
import 'package:frontend/infrastructure/models/article_api/article_api_response.dart';

class ArticleMapper {
  static Article articleApiToEntity (ArticlesApiResponse articleResponse) => Article(
    author: articleResponse.author,
    title: articleResponse.title,
    description: articleResponse.description,
    url: articleResponse.url,
    urlToImage: articleResponse.urlToImage,
    publishedAt: articleResponse.publishedAt.toIso8601String()
  );
}