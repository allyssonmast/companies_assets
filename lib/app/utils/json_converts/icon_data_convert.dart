import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class IconDataConverter implements JsonConverter<IconData?, int?> {
  const IconDataConverter();

  @override
  IconData? fromJson(int? json) {
    if (json == null) return null;
    return IconData(json, fontFamily: 'MaterialIcons');
  }

  @override
  int? toJson(IconData? object) {
    return object?.codePoint;
  }
}
