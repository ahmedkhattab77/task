class Item {
  final int? id;
  final String? fullName;
  final String? name;
  final bool? private;

  Item({
    required this.id,
    required this.fullName,
    required this.name,
    required this.private,
  });

  // ignore: empty_constructor_bodies
  factory Item.fromJson(Map<String, dynamic> jsonData) {
    return Item(
        id: jsonData['id'],
        fullName: jsonData['full_name'],
        name: jsonData['name'],
        private: jsonData['private']);
  }

  // String get title => null;
}
