import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsss_appp/services/news_service.dart';
import 'package:newsss_appp/views/home_page.dart';

void main() {
  NewsService(Dio()).getNews();
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
