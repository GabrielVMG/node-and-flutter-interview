
import 'dart:convert';

List<ArticlesApiResponse> articleApiResponseFromJson(String str) => List<ArticlesApiResponse>.from(json.decode(str).map((x) => ArticlesApiResponse.fromJson(x)));
List<ArticlesApiResponse> articleApiResponseFromJsonList(List<dynamic> l) {
  return l.map((e) => ArticlesApiResponse.fromJson(e)).toList();
}

String articleApiResponseToJson(List<ArticlesApiResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ArticlesApiResponse {
    final String author;
    final String title;
    final String description;
    final String url;
    final String urlToImage;
    final DateTime publishedAt;

    ArticlesApiResponse({
        required this.author,
        required this.title,
        required this.description,
        required this.url,
        required this.urlToImage,
        required this.publishedAt,
    });

    factory ArticlesApiResponse.fromJson(Map<String, dynamic> json) => ArticlesApiResponse(
        author: json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: DateTime.parse(json["publishedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt.toIso8601String(),
    };
}
