import 'package:flutter/material.dart';

class LeadingImageArticle extends StatelessWidget {
  final String urlToImage;
  const LeadingImageArticle({super.key, required this.urlToImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: NetworkImage(urlToImage),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}