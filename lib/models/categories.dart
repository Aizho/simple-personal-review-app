import 'item.dart';

class Categories {
  String title;
  bool fav;
  //String path;
  List<Item> itemlist;

  Categories({
    required this.title,
    //this.path = 'assets/download.jpg',
    this.fav = false,
    required this.itemlist,
  });
}
