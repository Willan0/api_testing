import 'package:json_annotation/json_annotation.dart';

import '../rating_vo/rating_vo.dart';
part 'fake_store_vo.g.dart';
@JsonSerializable()
class FakeStoreVO{
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'price')
  num? price;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'category')
  String? category;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'rating')
  RatingVO? rating;

  FakeStoreVO(this.id, this.title, this.price, this.description, this.category,
      this.image, this.rating);

  factory FakeStoreVO.fromJson(Map<String,dynamic> json) => _$FakeStoreVOFromJson(json);
}