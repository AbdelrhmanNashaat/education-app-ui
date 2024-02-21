import 'package:flutter/material.dart';

class CategoriesModel {
  final Color color;
  final IconData? icon;
  final String text;

  CategoriesModel(
      {required this.color, required this.icon, required this.text});
  static final List<CategoriesModel> categories = [
    CategoriesModel(
        color: const Color(0xFFFFCF2F), icon: Icons.category, text: 'Category'),
    CategoriesModel(
        color: const Color(0xFF6FE08D),
        icon: Icons.video_library,
        text: 'Classes'),
    CategoriesModel(
        color: const Color(0xFF61BDFD),
        icon: Icons.assignment,
        text: 'Free Courses'),
    CategoriesModel(
        color: const Color(0xFFFC7F7F), icon: Icons.store, text: 'Book Store'),
    CategoriesModel(
        color: const Color(0xFFCB84FB),
        icon: Icons.play_circle_fill,
        text: 'Live Course'),
    CategoriesModel(
        color: const Color(0xFF78E667),
        icon: Icons.emoji_events,
        text: 'LeaderBoard'),
  ];
}
