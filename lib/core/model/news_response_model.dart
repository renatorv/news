import 'package:json_annotation/json_annotation.dart';
import 'package:news_impl/core/model/article.dart';

part 'news_response_model.g.dart';

@JsonSerializable(nullable: false)
class NewsResponseModel {
  NewsResponseModel();
  @JsonKey(name: "status")
  String status;

  @JsonKey(name: "totalResults")
  String totalResults;

  @JsonKey(name: "articles")
  List<Article> articles;

  factory NewsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$NewsResponseModelToJson(this);
}
