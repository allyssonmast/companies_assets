import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class ColorConverter implements JsonConverter<Color?, int?> {
  const ColorConverter();

  @override
  Color? fromJson(int? json) {
    if (json == null) return null;
    return Color(json);
  }

  @override
  int? toJson(Color? object) {
    return object?.value;
  }
}
