import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../utils/json_converts/color_convert.dart';
import 'icon_data_convert.dart';

part 'tree_node.g.dart';

@JsonSerializable(explicitToJson: true)
class NodeTree {
  final String key;
  final String label;
  final List<NodeTree> children;
  final bool expanded;
  final bool parent;
  @IconDataConverter()
  final IconData? icon;
  @ColorConverter()
  final Color? iconColor;
  @ColorConverter()
  final Color? selectedIconColor;
  final String? sensorType;
  final String? status;

  NodeTree({
    required this.key,
    required this.label,
    this.children = const [],
    this.expanded = false,
    this.parent = false,
    this.icon,
    this.iconColor,
    this.selectedIconColor,
    this.sensorType,
    this.status,
  });

  factory NodeTree.fromJson(Map<String, dynamic> json) =>
      _$NodeTreeFromJson(json);

  Map<String, dynamic> toJson() => _$NodeTreeToJson(this);

}
