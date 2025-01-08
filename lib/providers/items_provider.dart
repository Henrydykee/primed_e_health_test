import 'package:flutter/material.dart';

class Item {
  final int id;
  final String title;
  final String description;

  Item({required this.id, required this.title, required this.description});
}

class ItemsProvider with ChangeNotifier {
  bool _isLoading = false;
  List<Item> _items = [];

  bool get isLoading => _isLoading;
  List<Item> get items => _items;

  Future<void> fetchItems() async {
    _isLoading = true;
    notifyListeners();

    // Simulate API call
    await Future.delayed(const Duration(seconds: 1));

    // Mock data
    _items = List.generate(
      10,
      (index) => Item(
        id: index + 1,
        title: 'Item ${index + 1}',
        description: 'This is a detailed description for item ${index + 1}',
      ),
    );

    _isLoading = false;
    notifyListeners();
  }
}