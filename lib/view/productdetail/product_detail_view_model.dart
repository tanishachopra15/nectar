import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/favorite_service.dart';

class ProductDetailViewModel extends ChangeNotifier {
  final favorite = locator<FavoriteService>();
  int _quantity = 1;
  int get quantity => _quantity;

  bool _isLiked = true;
  bool get isLiked => _isLiked;

  ProductDetailViewModel(ProductModel product) {
    getFavoritesProduct(product);
  }

  void increment() {
    _quantity++;
    notifyListeners();
  }

  void decrement() {
    if (quantity > 1) {
      _quantity--;
    }
    notifyListeners();
  }

  Future<void> addProductToFavorite(ProductModel product) async {
    _isLiked = !_isLiked;
    favorite.addFavorites(product);
    notifyListeners();
  }

  Future<void> getFavoritesProduct(ProductModel product) async {
    _isLiked = await favorite.isLiked(product.id);
    notifyListeners();
  }

  void removeProductToFav(ProductModel product) async {
    _isLiked = !_isLiked;
    favorite.removeFavorite(product.id);
    notifyListeners();
  }
}
