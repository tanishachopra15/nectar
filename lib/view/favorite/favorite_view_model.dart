import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/favorite_service.dart';

class FavoriteViewModel extends ChangeNotifier {
  final favorites = locator<FavoriteService>();

  List<ProductModel> _favorites = [];
  List<ProductModel> get favorite => _favorites;

  FavoriteViewModel() {
    // addFavoriteProduct();
    getFavoriteProduct();
  }

  Future<void> addFavoriteProduct(ProductModel product) async {
    _favorites = await favorites.addFavorites(product);
    notifyListeners();
  }

  Future<void> getFavoriteProduct() async {
    print('hello');
    _favorites = await favorites.getFavorites();
    log('_favorites ${_favorites}');
    notifyListeners();
  }
}
