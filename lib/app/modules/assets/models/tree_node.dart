import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../utils/json_converts/icon_data_convert.dart';

part 'tree_node.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class NodeTree {
  final String key;
  final String label;
  final List<NodeTree> children;
  @IconDataConverter()
  final IconData? icon;
  final String? sensorType;
  final String? status;

  NodeTree({
    required this.key,
    required this.label,
    this.children = const [],
    this.icon,
    this.sensorType,
    this.status,
  });

  factory NodeTree.fromJson(Map<String, dynamic> json) =>
      _$NodeTreeFromJson(json);

  Map<String, dynamic> toJson() => _$NodeTreeToJson(this);
}
