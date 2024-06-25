import 'package:injectable/injectable.dart';

import '../modules/assets/models/tree_node.dart';

@injectable
class FilterNodes {
  List<NodeTree> call(List<NodeTree> nodes, String query,
      bool Function(NodeTree node) predicate) {
    return nodes
        .map((node) {
          List<NodeTree> filteredChildren = node.children.isNotEmpty
              ? call(node.children, query, predicate)
              : [];
          bool matchesQuery =
              node.label.toLowerCase().contains(query.toLowerCase());
          bool matchesPredicate = predicate(node);
          return (matchesQuery && matchesPredicate) ||
                  filteredChildren.isNotEmpty
              ? node.copyWith(children: filteredChildren)
              : null;
        })
        .where((node) => node != null)
        .toList()
        .cast<NodeTree>();
  }
}
