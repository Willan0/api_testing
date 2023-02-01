import 'package:json_annotation/json_annotation.dart';
part 'json_place_holder_vo.g.dart';
@JsonSerializable()
class JsonPlaceHolderVO{
  @JsonKey(name: 'userId')
  int? userId;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'body')
  String? body;
  JsonPlaceHolderVO(this.userId, this.id, this.title, this.body);
  factory JsonPlaceHolderVO.fromJson(Map<String,dynamic> json)=> _$JsonPlaceHolderVOFromJson(json);
}