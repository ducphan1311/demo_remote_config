import 'package:demo_remote_config/domain/entity/tab_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'tab_dto.g.dart';

@JsonSerializable()
class TabDto extends TabModel {

  factory TabDto.fromJson(Map<String, dynamic> json) => _$TabDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TabDtoToJson(this);

  @override
  String? refFireStore;

  @override
  @JsonKey(name: 'template')
  String? remoteConfigTemplate;

  @override
  HomeStyleTemplate? style;

  @override
  String? title;

  @override
  String? webLink;

  TabDto(this.refFireStore, this.remoteConfigTemplate, this.style, this.title,
      this.webLink);
}