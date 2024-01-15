import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartModel extends ChangeNotifier {
  /// Internal, private state of the cart.
  final List<int> _items = [];

  /// An unmodifiable view of the items in the cart.
  UnmodifiableListView<int> get items => UnmodifiableListView(_items);

  /// The current total price of all items (assuming all items cost $42).
  int get totalPrice => _items.length * 42;

  /// Adds [item] to cart. This and [removeAll] are the only ways to modify the
  /// cart from the outside.
  void add(int item) {
    _items.add(item);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  /// Removes all items from the cart.
  void removeAll() {
    _items.clear();
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }
}

class ProviderDemo extends StatefulWidget {
  @override
  _ProviderDemoState createState() => _ProviderDemoState();
}

class _ProviderDemoState extends State<ProviderDemo> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CartModel>(
      create: (context) => CartModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Provider Demo'),
        ),
        body: Consumer<CartModel>(
          builder: (context, cart, child) {
            return Center(
              child: Text('总价：${cart.totalPrice}'),
            );
          },
        ),
        floatingActionButton: Consumer<CartModel>(
          builder: (context, cart, child) {
            return FloatingActionButton(
              child: Icon(Icons.add_shopping_cart),
              onPressed: () {
                cart.add(1);
              },
            );
          },
        ),
      ),
    );
  }
}
