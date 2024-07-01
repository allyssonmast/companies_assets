import 'package:flutter/material.dart';

import '../../models/tree_node.dart';

class TreeNodeWidget extends StatelessWidget {
  final NodeTree node;

  const TreeNodeWidget({super.key, required this.node});

  @override
  Widget build(BuildContext context) {
    return _buildNode(node);
  }

  static final iconData = {
    'operating': Icons.hourglass_empty,
    'alert': Icons.warning_amber,
  };

  static final Map<String, Widget> iconCache = {};
  static final Map<String, Widget> textCache = {};

  Widget _buildIcon(IconData? iconData) {
    return iconData != null ? Icon(iconData) : SizedBox.shrink();
  }

  Widget _buildNode(NodeTree node) {
    Widget leadingIcon = _buildIcon(node.icon);

    Widget? subtitle;
    if (node.sensorType != null) {
      subtitle =
          textCache.putIfAbsent(node.sensorType!, () => Text(node.sensorType!));
    }

    Widget? trailing;
    if (node.status != null) {
      trailing = iconCache.putIfAbsent(
          node.status!, () => Icon(iconData[node.status]));
    }

    if (node.children.isEmpty) {
      return ListTile(
        title: Text(node.label),
        leading: leadingIcon,
        subtitle: subtitle,
        trailing: trailing,
      );
    }

    return ExpansionTile(
      title: Text(node.label),
      leading: leadingIcon,
      subtitle: subtitle,
      trailing: trailing,
      children: [
        CustomScrollView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate((_, index) {
                return TreeNodeWidget(
                  node: node.children[index],
                );
              }, childCount: node.children.length),
            )
          ],
        )
      ],
    );
  }
}
