import 'package:flutter/material.dart';
import 'package:frontend/presentation/widgets/leading_image_article.dart';
import 'package:frontend/presentation/widgets/subtitle_article_item.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleItemWidget extends StatelessWidget {
  final String title;
  final String author;
  final String description;
  final String urlToImage;
  final String url;

  const ArticleItemWidget({
    super.key,
    required this.title,
    required this.author,
    required this.description,
    required this.urlToImage,
    required this.url
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        child: ListTile(
          onTap: () => _launchUrl(url),
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

  Future<void> _launchUrl(String _url) async {
    if (!await launchUrl(Uri.parse(_url))) {
      throw Exception('Could not launch $_url');
    }
  }
}