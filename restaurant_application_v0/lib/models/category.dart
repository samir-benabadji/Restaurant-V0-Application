import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;
  final String imageUrl;

  const Category({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    this.color = Colors.orange,
  });
}
