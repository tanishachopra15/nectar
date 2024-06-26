import 'package:flutter/cupertino.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/app_router.gr.dart';
import 'package:nectar/core/model/category_model.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/category_service.dart';
import 'package:nectar/core/service/product_service.dart';

class HomeViewModel extends ChangeNotifier {
  final _route = locator<AppRouter>();
  final _product = locator<ProductService>();
  final _category = locator<CategoryService>();

  List<ProductModel> _products = [];
  List<ProductModel> get products => _products;

  List<CategoryModel> _categories = [];
  List<CategoryModel> get categories => _categories;

  void navigateToProductDetails(ProductModel product) {
    print('navigate to product details');
    _route.push(ProductDetailRoute(product: product));
  }

  void navigateToBreverages(CategoryModel category) {
    print('navigate to breverages');
    _route.push( ProductGridRoute(category: category));
  }

  HomeViewModel() {
    getProduct();
    getCategory();
  }

  Future<void> getProduct() async {
    print('home model get products');
    _products = await _product.getProducts();
    notifyListeners();
  }

  Future<void> getCategory() async {
    print('home model get products');
    _categories = await _category.getCategories();
    notifyListeners();
  }
  
}
