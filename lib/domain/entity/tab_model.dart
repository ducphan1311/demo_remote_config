import 'package:json_annotation/json_annotation.dart';

abstract class TabModel {
  String? title;

  HomeStyleTemplate? style;

  String? remoteConfigTemplate;

  String? refFireStore;

  String? webLink;
}

enum HomeStyleTemplate {
  @JsonValue('style1')
  styleCake,
  @JsonValue('style2')
  styleCandy,
  @JsonValue('style3')
  styleMilk,
  @JsonValue('unknown')
  unKnownStyle
}