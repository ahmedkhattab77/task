import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:task/model/item_model.dart';
import 'package:task/model/list_tems.dart';

class Api {
  final String baseUrl = 'https://api.github.com';
  Future<List<Item>> getAllItems(int i) async {
    late List<Item> itemList;
    try {
      final url = Uri.parse(
          '$baseUrl/search/repositories?q=created:%3E2023-04-10&sort=stars&order=desc&per_page=10&page=$i');
      http.Response responce = await http.get(url);
      if (responce.statusCode == 200) {
        var jsonData = jsonDecode(responce.body);
        Items items = Items.fromJson(jsonData);
        itemList = items.items.map((e) => Item.fromJson(e)).toList();
      } else {
        // ignore: avoid_print
        print(responce.statusCode);
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
    return itemList;
  }

  Future<List<Item>> getAllItemsbyLang(String lang) async {
    late List<Item> itemList;
    try {
      final url = Uri.parse(
          '$baseUrl/search/repositories?q=created:%3E2023-04-10&sort=stars&order=desc&per_page=10&page=1');
      http.Response responce = await http.get(url);
      if (responce.statusCode == 200) {
        var jsonData = jsonDecode(responce.body);
        Items items = Items.fromJson(jsonData);
        itemList = items.items.map((e) => Item.fromJson(e)).toList();
      } else {
        // ignore: avoid_print
        print(responce.statusCode);
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
    return itemList;
  }
}
