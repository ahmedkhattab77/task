import 'package:task/Api/api.dart';
import 'package:task/model/item_model.dart';

class ItemsListViewModel {
  int x = 1;
  List<Item> itemList = [];
  List<Item> itemListbyLang = [];
  get getAllItems async {
    itemList = await Api().getAllItems(1);
  }

  // List<Item> get itemList => _itemList;
  // List<Item> get itemListbyLang => _itemListbyLang;
}
