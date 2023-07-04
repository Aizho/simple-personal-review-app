import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reviews_app/models/categories.dart';

import '../models/item.dart';
import '../models/review.dart';

class AppViewModel extends ChangeNotifier {
  List<Categories> categories = [
    Categories(itemlist: [
      Item(title: "Shoe", description: "A Shoe", reviewList: [
        Review(
            username: "Rafizh",
            dateTime: DateTime.now(),
            rating: 5,
            description: "Good Show to be honest"),
      ]),
      Item(title: "Wow", description: "A Shoe", reviewList: [
        Review(
            username: "Rafizh",
            dateTime: DateTime.now(),
            rating: 5,
            description: "Good Show to be honest"),
      ]),
    ], title: "Foot"),
    Categories(title: "Leg", itemlist: [
      Item(title: "Pants", description: "A King", reviewList: [
        Review(
            username: "Mom",
            dateTime: DateTime.now(),
            rating: 9,
            description: "Not Bad Show to be honest"),
      ]),
    ]),
    Categories(title: "Leg", itemlist: [
      Item(title: "Pants", description: "A King", reviewList: [
        Review(
            username: "Mom",
            dateTime: DateTime.now(),
            rating: 9,
            description: "Not Bad Show to be honest"),
      ]),
    ]),
    Categories(title: "Leg", itemlist: [
      Item(title: "Pants", description: "A King", reviewList: [
        Review(
            username: "Mom",
            dateTime: DateTime.now(),
            rating: 9,
            description: "Not Bad Show to be honest"),
      ]),
    ]),
  ];
  get categoriesLength => categories.length;

  bool _isDark = true;

  bool get isDark => _isDark;

  void toggleTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }

  void toggleFav(index) {
    categories[index].fav = !categories[index].fav;
    notifyListeners();
  }
}
