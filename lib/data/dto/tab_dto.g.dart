// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TabDto _$TabDtoFromJson(Map<String, dynamic> json) => TabDto(
      json['refFireStore'] as String?,
      json['template'] as String?,
      $enumDecodeNullable(_$HomeStyleTemplateEnumMap, json['style']),
      json['title'] as String?,
      json['webLink'] as String?,
    );

Map<String, dynamic> _$TabDtoToJson(TabDto instance) => <String, dynamic>{
      'refFireStore': instance.refFireStore,
      'template': instance.remoteConfigTemplate,
      'style': _$HomeStyleTemplateEnumMap[instance.style],
      'title': instance.title,
      'webLink': instance.webLink,
    };

const _$HomeStyleTemplateEnumMap = {
  HomeStyleTemplate.styleCake: 'style1',
  HomeStyleTemplate.styleCandy: 'style2',
  HomeStyleTemplate.styleMilk: 'style3',
  HomeStyleTemplate.unKnownStyle: 'unknown',
};
