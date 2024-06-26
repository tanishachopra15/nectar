import 'dart:collection';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/model/item.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/cart_service.dart';

class CartViewModel extends ChangeNotifier {
  final List<Item> _items = [];

  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  int get totalPrice => _items.length * 42;

  void add(Item item) {
    _items.add(item);
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }

  void removeItem(Item item) {
    _items.remove(item);
    notifyListeners();
  }

  List<ProductModel> _cart = [];
  List<ProductModel> get cart => _cart;

  final cartLocator = locator<CartService>();

  FavoriteViewModel() {
    // addFavoriteProduct();
    getFavoriteProduct();
  }

  Future<void> addFavoriteProduct(ProductModel product) async {
    _cart = await cartLocator.addToCart(product);
    notifyListeners();
  }

  Future<void> getFavoriteProduct() async {
    print('hello');
    _cart = await cartLocator.getCart();
    log('_favorites ${_cart}');
    notifyListeners();
  }
}
