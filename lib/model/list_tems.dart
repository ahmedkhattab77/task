class Items {
  final List<dynamic> items;

  Items({required this.items});
  factory Items.fromJson(Map<String, dynamic> jsonData) {
    return Items(items: jsonData['items']);
  }
}
