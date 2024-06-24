import 'package:flutter/material.dart';

import '../../models/tree_node.dart';

class TreeNodeWidget extends StatelessWidget {
  final NodeTree node;

  const TreeNodeWidget({Key? key, required this.node}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildNode(node);
  }

  Widget _buildNode(NodeTree node) {
    if (node.children.isEmpty) {
      return ListTile(
        title: Text(node.label),
        leading: node.icon != null ? Icon(node.icon, color: node.iconColor) : null,
        subtitle: node.sensorType != null ? Text(node.sensorType!) : null,
        trailing: node.status != null ? Text(node.status!) : null,
      );
    }

    return ExpansionTile(
      key: PageStorageKey<NodeTree>(node),
      title: Text(node.label),
      leading: node.icon != null ? Icon(node.icon, color: node.iconColor) : null,
      subtitle: node.sensorType != null ? Text(node.sensorType!) : null,
      trailing: node.status != null ? Text(node.status!) : null,
      children: node.children.map(_buildNode).toList(),
    );
  }
}
