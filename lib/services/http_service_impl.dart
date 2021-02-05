import 'package:dio/dio.dart';
import 'package:news_impl/services/http_service.dart';

const BASE_URL = 'https://newsapi.org/';
const API_KEY = '456770a34610482dac9d5679c958246c';

class HttpServiceImpl implements HttpService {
  Dio _dio;

  @override
  Future<Response> getRequest(String url) async {
    Response response;

    try {
      response = await _dio.get(url);
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }

    return response;
  }

  initializeInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error) {
          print(error.message);
        },
        onRequest: (request) {
          print('${request.method} | ${request.method}');
        },
        onResponse: (response) {
          print(
            '${response.statusCode} ${response.statusMessage} ${response.data}',
          );
        },
      ),
    );
  }

  @override
  void init() {
    _dio = Dio(
      BaseOptions(
        baseUrl: BASE_URL,
        headers: {
          'Authorization': 'Bearer $API_KEY',
        },
      ),
    );
    initializeInterceptors();
  }
}
