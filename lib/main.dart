import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_impl/feature/news_headline/view/news_headline_view.dart';
import 'package:news_impl/feature/search_news/view/search_news_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(
          name: '/news_headline',
          page: () => NewsHeadlineView(),
        ),
        GetPage(
          name: '/search_news',
          page: () => SearchNewsView(),
        ),
      ],
      initialRoute: '/news_headline',
    );
  }
}

// 456770a34610482dac9d5679c958246c
// https://www.youtube.com/watch?v=tNGfVp4KY2g&t=156s
// 50 minutos
