import 'package:flutter/cupertino.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/app_router.gr.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/supabase/product_service.dart';

class HomeViewModel extends ChangeNotifier {
  final _route = locator<AppRouter>();
  final _product = locator<ProductService>();

  List<ProductModel> _products = [];
  List<ProductModel> get products => _products;

  void navigateToProductDetails() {
    print('navigate to product details');
    _route.push(const ProductDetailRoute());
  }

  void navigateToBreverages() {
    print('navigate to breverages');
    _route.push(const BeveragesRoute());
  }

  HomeViewModel() {
    getProduct();
  }

  void navigateToSearch() {
    print('navigate to search');
    _route.push(const SearchRoute());
  }

  Future<void> getProduct() async {
    print('home model get products');
    _products = await _product.getproducts();
    notifyListeners();
  }
}
