// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsResponseModel _$NewsResponseModelFromJson(Map<String, dynamic> json) {
  return NewsResponseModel()
    ..status = json['status'] as String
    ..totalResults = json['totalResults'] as String
    ..articles = (json['articles'] as List)
        .map((e) => Article.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$NewsResponseModelToJson(NewsResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
