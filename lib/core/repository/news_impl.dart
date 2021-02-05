import 'package:get/get.dart';
import 'package:news_impl/core/model/article.dart';
import 'package:news_impl/core/model/news_response_model.dart';
import 'package:news_impl/core/repository/news_repository.dart';
import 'package:news_impl/services/http_service.dart';
import 'package:news_impl/services/http_service_impl.dart';

class NewsImpl implements NewsRepository {
  HttpService _httpService;

  NewsImpl() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }

  @override
  Future<List<Article>> getNewsHeadline() async {
    try {
      final response =
          await _httpService.getRequest('/v2/top-headlines?country=us');

      final parsedResponse = NewsResponseModel.fromJson(response.data);

      return parsedResponse.articles;
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }

  @override
  Future<List<Article>> getSearchNews(String query) async {
    try {
      final response = await _httpService.getRequest('/v2/everything?q=$query');

      final parsedResponse = NewsResponseModel.fromJson(response.data);

      return parsedResponse.articles;
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }
}
