// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_node.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NodeTreeCWProxy {
  NodeTree key(String key);

  NodeTree label(String label);

  NodeTree children(List<NodeTree> children);

  NodeTree icon(IconData? icon);

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
    IconData? icon,
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
  NodeTree icon(IconData? icon) => this(icon: icon);

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
    Object? icon = const $CopyWithPlaceholder(),
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
      icon: icon == const $CopyWithPlaceholder()
          ? _value.icon
          // ignore: cast_nullable_to_non_nullable
          : icon as IconData?,
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
      icon: const IconDataConverter().fromJson((json['icon'] as num?)?.toInt()),
      sensorType: json['sensorType'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$NodeTreeToJson(NodeTree instance) => <String, dynamic>{
      'key': instance.key,
      'label': instance.label,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'icon': const IconDataConverter().toJson(instance.icon),
      'sensorType': instance.sensorType,
      'status': instance.status,
    };
