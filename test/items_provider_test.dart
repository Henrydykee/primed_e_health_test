import 'package:flutter_test/flutter_test.dart';
import 'package:primed_e_health_test/providers/items_provider.dart';

void main() {
  group('ItemsProvider Tests', () {
    late ItemsProvider itemsProvider;

    setUp(() {
      itemsProvider = ItemsProvider();
    });

    test('initial state should be empty and not loading', () {
      expect(itemsProvider.items, isEmpty);
      expect(itemsProvider.isLoading, false);
    });

    test('fetchItems should populate items list', () async {
      expect(itemsProvider.items, isEmpty);
      await itemsProvider.fetchItems();
      expect(itemsProvider.items, isNotEmpty);
      expect(itemsProvider.items.length, 10);
      expect(itemsProvider.isLoading, false);
    });

    test('items should have valid data after fetching', () async {
      await itemsProvider.fetchItems();
      final firstItem = itemsProvider.items.first;
      
      expect(firstItem.id, 1);
      expect(firstItem.title, 'Item 1');
      expect(firstItem.description, contains('description for item 1'));
    });
  });
}