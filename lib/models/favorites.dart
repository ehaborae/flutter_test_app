import 'package:flutter/material.dart';

class Favorites extends ChangeNotifier {
  final List<int> _favoritesItems = [];

  List<int> get items => _favoritesItems;

  void add(int itemNo) {
    _favoritesItems.add(itemNo);
    notifyListeners();
  }

  void remove(int itemNo) {
    _favoritesItems.remove(itemNo);
    notifyListeners();
  }
}
