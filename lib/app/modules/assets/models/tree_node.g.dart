// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_node.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NodeTreeCWProxy {
  NodeTree key(String key);

  NodeTree label(String label);

  NodeTree children(List<NodeTree> children);

  NodeTree expanded(bool expanded);

  NodeTree parent(bool parent);

  NodeTree icon(IconData? icon);

  NodeTree iconColor(Color? iconColor);

  NodeTree selectedIconColor(Color? selectedIconColor);

  NodeTree sensorType(String? sensorType);

  NodeTree status(String? status);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NodeTree(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NodeTree(...).copyWith(id: 12, name: "My name")
  /// ````
  NodeTree call({
    String? key,
    String? label,
    List<NodeTree>? children,
    bool? expanded,
    bool? parent,
    IconData? icon,
    Color? iconColor,
    Color? selectedIconColor,
    String? sensorType,
    String? status,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNodeTree.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNodeTree.copyWith.fieldName(...)`
class _$NodeTreeCWProxyImpl implements _$NodeTreeCWProxy {
  const _$NodeTreeCWProxyImpl(this._value);

  final NodeTree _value;

  @override
  NodeTree key(String key) => this(key: key);

  @override
  NodeTree label(String label) => this(label: label);

  @override
  NodeTree children(List<NodeTree> children) => this(children: children);

  @override
  NodeTree expanded(bool expanded) => this(expanded: expanded);

  @override
  NodeTree parent(bool parent) => this(parent: parent);

  @override
  NodeTree icon(IconData? icon) => this(icon: icon);

  @override
  NodeTree iconColor(Color? iconColor) => this(iconColor: iconColor);

  @override
  NodeTree selectedIconColor(Color? selectedIconColor) =>
      this(selectedIconColor: selectedIconColor);

  @override
  NodeTree sensorType(String? sensorType) => this(sensorType: sensorType);

  @override
  NodeTree status(String? status) => this(status: status);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NodeTree(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NodeTree(...).copyWith(id: 12, name: "My name")
  /// ````
  NodeTree call({
    Object? key = const $CopyWithPlaceholder(),
    Object? label = const $CopyWithPlaceholder(),
    Object? children = const $CopyWithPlaceholder(),
    Object? expanded = const $CopyWithPlaceholder(),
    Object? parent = const $CopyWithPlaceholder(),
    Object? icon = const $CopyWithPlaceholder(),
    Object? iconColor = const $CopyWithPlaceholder(),
    Object? selectedIconColor = const $CopyWithPlaceholder(),
    Object? sensorType = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return NodeTree(
      key: key == const $CopyWithPlaceholder() || key == null
          ? _value.key
          // ignore: cast_nullable_to_non_nullable
          : key as String,
      label: label == const $CopyWithPlaceholder() || label == null
          ? _value.label
          // ignore: cast_nullable_to_non_nullable
          : label as String,
      children: children == const $CopyWithPlaceholder() || children == null
          ? _value.children
          // ignore: cast_nullable_to_non_nullable
          : children as List<NodeTree>,
      expanded: expanded == const $CopyWithPlaceholder() || expanded == null
          ? _value.expanded
          // ignore: cast_nullable_to_non_nullable
          : expanded as bool,
      parent: parent == const $CopyWithPlaceholder() || parent == null
          ? _value.parent
          // ignore: cast_nullable_to_non_nullable
          : parent as bool,
      icon: icon == const $CopyWithPlaceholder()
          ? _value.icon
          // ignore: cast_nullable_to_non_nullable
          : icon as IconData?,
      iconColor: iconColor == const $CopyWithPlaceholder()
          ? _value.iconColor
          // ignore: cast_nullable_to_non_nullable
          : iconColor as Color?,
      selectedIconColor: selectedIconColor == const $CopyWithPlaceholder()
          ? _value.selectedIconColor
          // ignore: cast_nullable_to_non_nullable
          : selectedIconColor as Color?,
      sensorType: sensorType == const $CopyWithPlaceholder()
          ? _value.sensorType
          // ignore: cast_nullable_to_non_nullable
          : sensorType as String?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as String?,
    );
  }
}

extension $NodeTreeCopyWith on NodeTree {
  /// Returns a callable class that can be used as follows: `instanceOfNodeTree.copyWith(...)` or like so:`instanceOfNodeTree.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NodeTreeCWProxy get copyWith => _$NodeTreeCWProxyImpl(this);
}

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
