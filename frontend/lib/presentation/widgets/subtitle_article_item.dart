import 'package:flutter/material.dart';

class SubtitleArticleItem extends StatelessWidget {
  final String author;
  final String description;
  const SubtitleArticleItem({super.key, required this.author, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          author,
          style: const TextStyle(
            fontSize: 14.0,
            color: Colors.grey,
          ),
        ),
        Text(
          description,
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}