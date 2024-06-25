import 'package:flutter/material.dart';

import '../../models/tree_node.dart';

class TreeNodeWidget extends StatelessWidget {
  final NodeTree node;

  const TreeNodeWidget({super.key, required this.node});

  @override
  Widget build(BuildContext context) {
    return _buildNode(node);
  }

  Widget _buildIcon(IconData? iconData) {
    return iconData != null ? Icon(iconData) : Container();
  }

  Widget _buildNode(NodeTree node) {
    var iconData = {
      'operating': Icons.hourglass_empty,
      'alert': Icons.warning_amber
    };

    Widget leadingIcon = _buildIcon(node.icon);
    Widget? subtitle = node.sensorType != null ? Text(node.sensorType!) : null;
    Widget? trailing = node.status != null ? Icon(iconData[node.status]) : null;

    if (node.children.isEmpty) {
      return ListTile(
        title: Text(node.label),
        leading: leadingIcon,
        subtitle: subtitle,
        trailing: trailing,
      );
    }

    return ExpansionTile(
      key: PageStorageKey<NodeTree>(node),
      title: Text(node.label),
      leading: leadingIcon,
      subtitle: subtitle,
      trailing: trailing,
      children: node.children.map(_buildNode).toList(),
    );
  }
}
