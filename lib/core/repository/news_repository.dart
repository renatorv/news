import 'package:news_impl/core/model/article.dart';

abstract class NewsRepository {
  Future<List<Article>> getNewsHeadline();
  Future<List<Article>> getSearchNews(String query);
}
