import 'package:get_it/get_it.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/service/auth_service.dart';
import 'package:nectar/core/service/cart_service.dart';
import 'package:nectar/core/service/category_service.dart';
import 'package:nectar/core/service/favorite_service.dart';
import 'package:nectar/core/service/storage_service.dart';
import 'package:nectar/core/service/product_service.dart';

GetIt locator = GetIt.instance;

void setuplocator() {
  locator.registerSingleton(AppRouter());
  locator.registerSingleton(AuthService());
  locator.registerSingleton(ProductService());
  locator.registerSingleton(StorageService());
  locator.registerSingleton(CategoryService());
  locator.registerSingleton(FavoriteService());
  locator.registerSingleton(CartService());
}
