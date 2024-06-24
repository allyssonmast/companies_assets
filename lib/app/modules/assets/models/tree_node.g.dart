// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NodeTree _$NodeTreeFromJson(Map<String, dynamic> json) => NodeTree(
      key: json['key'] as String,
      label: json['label'] as String,
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => NodeTree.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      expanded: json['expanded'] as bool? ?? false,
      parent: json['parent'] as bool? ?? false,
      icon: const IconDataConverter().fromJson((json['icon'] as num?)?.toInt()),
      iconColor:
          const ColorConverter().fromJson((json['iconColor'] as num?)?.toInt()),
      selectedIconColor: const ColorConverter()
          .fromJson((json['selectedIconColor'] as num?)?.toInt()),
      sensorType: json['sensorType'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$NodeTreeToJson(NodeTree instance) => <String, dynamic>{
      'key': instance.key,
      'label': instance.label,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'expanded': instance.expanded,
      'parent': instance.parent,
      'icon': const IconDataConverter().toJson(instance.icon),
      'iconColor': const ColorConverter().toJson(instance.iconColor),
      'selectedIconColor':
          const ColorConverter().toJson(instance.selectedIconColor),
      'sensorType': instance.sensorType,
      'status': instance.status,
    };
