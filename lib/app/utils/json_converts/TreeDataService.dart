import 'package:injectable/injectable.dart';
import '../../modules/assets/models/tree_node.dart';


@injectable
class TreeDataConvert {

  List<NodeTree> buildTree(List<dynamic> locations, List<dynamic> assets) {
    final Map<String, dynamic> locationsMap = {for (var loc in locations) loc['id']: loc};

    final Map<String, List<dynamic>> locationAssetsMap = {};
    final Map<String, List<dynamic>> parentAssetsMap = {};

    for (var asset in assets) {
      final locationId = asset['locationId'];
      final parentId = asset['parentId'];

      if (locationId != null) {
        if (!locationAssetsMap.containsKey(locationId)) {
          locationAssetsMap[locationId] = [];
        }
        locationAssetsMap[locationId]!.add(asset);
      } else if (parentId != null) {
        if (!parentAssetsMap.containsKey(parentId)) {
          parentAssetsMap[parentId] = [];
        }
        parentAssetsMap[parentId]!.add(asset);
      }
    }

    List<NodeTree> buildNodes(String? parentId) {
      final List<NodeTree> nodes = [];
      for (var loc in locations.where((loc) => loc['parentId'] == parentId)) {
        final List<NodeTree> children = buildNodes(loc['id']);
        if (locationAssetsMap.containsKey(loc['id'])) {
          for (var asset in locationAssetsMap[loc['id']]!) {
            children.add(_buildAssetNode(asset, parentAssetsMap));
          }
        }
        nodes.add(NodeTree(
          label: loc['name'],
          key: loc['id'],
          children: children,
        ));
      }
      return nodes;
    }

    return buildNodes(null);
  }

  NodeTree _buildAssetNode(dynamic asset, Map<String, List<dynamic>> parentAssetsMap) {
    final List<NodeTree> children = [];
    if (parentAssetsMap.containsKey(asset['id'])) {
      for (var subAsset in parentAssetsMap[asset['id']]!) {
        children.add(_buildAssetNode(subAsset, parentAssetsMap));
      }
    }
    return NodeTree(
      label: asset['name'],
      key: asset['id'],
      sensorType: asset['sensorType'],
      status: asset['status'],
      children: children,
    );
  }
}
