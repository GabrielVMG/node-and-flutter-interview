import 'package:flutter/material.dart';
import 'package:frontend/presentation/widgets/leading_image_article.dart';
import 'package:frontend/presentation/widgets/subtitle_article_item.dart';

class ArticleItemWidget extends StatelessWidget {
  final String title;
  final String author;
  final String description;
  final String urlToImage;

  const ArticleItemWidget({
    super.key,
    required this.title,
    required this.author,
    required this.description,
    required this.urlToImage
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        child: ListTile(
          leading:  LeadingImageArticle(urlToImage: urlToImage),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: SubtitleArticleItem(author: author, description: description),
        ),
      ),
    );
  }
}