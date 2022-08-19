import 'package:demo_remote_config/domain/entity/category_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'category_dto.g.dart';

@JsonSerializable()
class CategoryDto extends CategoryModel{

  factory CategoryDto.fromJson(Map<String, dynamic> json) => _$CategoryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryDtoToJson(this);

  @override
  String data;

  @override
  String type;

  CategoryDto(this.data, this.type);
}