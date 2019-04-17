class Road {
  final String city1;
  final String city2;
  Road(this.city1, this.city2);

  @override
  String toString() {
    return 'Road{$city1-🚗-$city2}';
  }
}

List<Road> findCircularRoad(List<Road> roads) {
  _removeDeadEndRoadsRecursive(roads);
  return roads;
}

void _removeDeadEndRoadsRecursive(List<Road> roads) {
  var deadEndCities = _getDeadEndCities(roads);

  final roadsCopy = List.from(roads);

  for (Road r in roadsCopy) {
    if (_isRoadDeadEnd(r, deadEndCities)) {
      roads.remove(r);
    }
  }
  if (roadsCopy.length == roads.length) {
    return;
  } else {
    _removeDeadEndRoadsRecursive(roads);
  }
}

bool _isRoadDeadEnd(Road road, Set<String> deadEndCities) =>
    deadEndCities.contains(road.city1) || deadEndCities.contains(road.city2);

Set<String> _getDeadEndCities(List<Road> input) {
  Set<String> result = Set();
  final map = _getAllCitiesMapOccurrences(input);
  map.keys.forEach((k) {

    if (map[k] == 1) {
      result.add(k);
    }
  });
  return result;
}

Map<String, int> _getAllCitiesMapOccurrences(List<Road> input) {
  Map<String, int> map = {};

  for (Road r in input) {
    if (map.containsKey(r.city1)) {
      map[r.city1] += 1;
    } else {
      map[r.city1] = 1;
    }
    if (map.containsKey(r.city2)) {
      map[r.city2] += 1;
    } else {
      map[r.city2] = 1;
    }
  }
  return map;
}
