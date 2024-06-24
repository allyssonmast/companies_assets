import 'package:injectable/injectable.dart';
import '../../modules/assets/models/tree_node.dart';

@injectable
class TreeDataConvert {
  List<NodeTree> buildTree(
      List<Map<String, dynamic>> locations, List<Map<String, dynamic>> assets) {

    final Map<String, List<Map<String, dynamic>>> locationAssetsMap = {};
    final Map<String, List<Map<String, dynamic>>> parentAssetsMap = {};

    void addToMap(Map<String, List<Map<String, dynamic>>> map, String key,
        Map<String, dynamic> value) {
      map.putIfAbsent(key, () => []).add(value);
    }

    for (var asset in assets) {
      final locationId = asset['locationId'];
      final parentId = asset['parentId'];

      if (locationId != null) {
        addToMap(locationAssetsMap, locationId, asset);
      } else if (parentId != null) {
        addToMap(parentAssetsMap, parentId, asset);
      }
    }

    List<NodeTree> buildNodes(String? parentId) {
      return locations.where((loc) => loc['parentId'] == parentId).map((loc) {
        final children = buildNodes(loc['id'])
          ..addAll(locationAssetsMap[loc['id']]
                  ?.map((asset) => _buildAssetNode(asset, parentAssetsMap)) ??
              []);
        return NodeTree(
          label: loc['name'],
          key: loc['id'],
          sensorType: loc['sensorType'],
          status: loc['status'],
          children: children,
        );
      }).toList();
    }

    return buildNodes(null);
  }

  NodeTree _buildAssetNode(Map<String, dynamic> asset,
      Map<String, List<Map<String, dynamic>>> parentAssetsMap) {
    final children = parentAssetsMap[asset['id']]
            ?.map((subAsset) => _buildAssetNode(subAsset, parentAssetsMap))
            .toList() ??
        [];
    return NodeTree(
      label: asset['name'],
      key: asset['id'],
      sensorType: asset['sensorType'],
      status: asset['status'],
      children: children,
    );
  }
}
