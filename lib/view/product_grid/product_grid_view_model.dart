import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/app_router.gr.dart';
import 'package:nectar/core/model/category_model.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/category_service.dart';

class ProductGridViewModel extends ChangeNotifier {
  final _categories = locator<CategoryService>();
  final _route = locator<AppRouter>();


  List<ProductModel> _products = [];
  List<ProductModel> get products => _products;

  ProductGridViewModel(CategoryModel category) {
    getCategoryProduct(category);
  }

  Future<void> getCategoryProduct(CategoryModel category) async {
    _products = await _categories.getCategoryProducts(category);
    notifyListeners();
  }

   void navigateToProductDetails(ProductModel product) {
    print('navigate to product details');
    _route.push(ProductDetailRoute(product: product));
  }
}
