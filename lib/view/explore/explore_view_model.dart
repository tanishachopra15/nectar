import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/app_router.gr.dart';
import 'package:nectar/core/model/category_model.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/category_service.dart';

class ExploreViewModel extends ChangeNotifier {
  final _category = locator<CategoryService>();
  final _route = locator<AppRouter>();

  List<ProductModel> _products = [];
  List<ProductModel> get products => _products;

  List<CategoryModel> _categories = [];
  List<CategoryModel> get categories => _categories;

  ExploreViewModel() {
    getCategory();
  }

  Future<void> getCategory() async {
    print('home model get products');
    _categories = await _category.getCategories();
    notifyListeners();
  }

  void navigateToSearch() {
    print('navigate to search');
    _route.push(const SearchRoute());
  }

  void navigateToBreverages(CategoryModel category) {
    print('navigate to breverages');
    _route.push( ProductGridRoute(category: category));
  }
}
