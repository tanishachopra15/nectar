import 'package:get_it/get_it.dart';
import 'package:nectar/core/app_router.dart';

GetIt locator = GetIt.instance;

void setuplocator() {
  locator.registerSingleton(AppRouter());
}
