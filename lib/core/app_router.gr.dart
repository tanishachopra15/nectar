// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;
import 'package:nectar/app_wrapper.dart' as _i2;
import 'package:nectar/core/model/category_model.dart' as _i18;
import 'package:nectar/core/model/product_model.dart' as _i17;
import 'package:nectar/view/account/account_view.dart' as _i1;
import 'package:nectar/view/cart/cart_view.dart' as _i3;
import 'package:nectar/view/explore/explore_view.dart' as _i4;
import 'package:nectar/view/favorite/favorite_view.dart' as _i5;
import 'package:nectar/view/home/home_view.dart' as _i6;
import 'package:nectar/view/login/location_view.dart' as _i7;
import 'package:nectar/view/login/login_view.dart' as _i8;
import 'package:nectar/view/login/phone_view.dart' as _i10;
import 'package:nectar/view/login/verification_view.dart' as _i14;
import 'package:nectar/view/onboarding/onboarding_view.dart' as _i9;
import 'package:nectar/view/product_grid/product_grid_view.dart' as _i12;
import 'package:nectar/view/productdetail/product_detail_view.dart' as _i11;
import 'package:nectar/view/search/search_view.dart' as _i13;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountView(),
      );
    },
    AppScaffold.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AppWrapper(),
      );
    },
    CartRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CartView(),
      );
    },
    ExploreRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ExploreView(),
      );
    },
    FavoriteRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.FavoriteView(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeView(),
      );
    },
    LocationRoute.name: (routeData) {
      final args = routeData.argsAs<LocationRouteArgs>(
          orElse: () => const LocationRouteArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.LocationView(key: args.key),
      );
    },
    LoginRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginView(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.OnboardingView(),
      );
    },
    PhoneRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneRouteArgs>(
          orElse: () => const PhoneRouteArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.PhoneView(key: args.key),
      );
    },
    ProductDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.ProductDetailView(
          key: args.key,
          product: args.product,
        ),
      );
    },
    ProductGridRoute.name: (routeData) {
      final args = routeData.argsAs<ProductGridRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.ProductGridView(
          key: args.key,
          category: args.category,
        ),
      );
    },
    SearchRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SearchView(),
      );
    },
    VerificationRoute.name: (routeData) {
      final args = routeData.argsAs<VerificationRouteArgs>(
          orElse: () => const VerificationRouteArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.VerificationView(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountView]
class AccountRoute extends _i15.PageRouteInfo<void> {
  const AccountRoute({List<_i15.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AppWrapper]
class AppScaffold extends _i15.PageRouteInfo<void> {
  const AppScaffold({List<_i15.PageRouteInfo>? children})
      : super(
          AppScaffold.name,
          initialChildren: children,
        );

  static const String name = 'AppScaffold';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CartView]
class CartRoute extends _i15.PageRouteInfo<void> {
  const CartRoute({List<_i15.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ExploreView]
class ExploreRoute extends _i15.PageRouteInfo<void> {
  const ExploreRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ExploreRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExploreRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i5.FavoriteView]
class FavoriteRoute extends _i15.PageRouteInfo<void> {
  const FavoriteRoute({List<_i15.PageRouteInfo>? children})
      : super(
          FavoriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomeView]
class HomeRoute extends _i15.PageRouteInfo<void> {
  const HomeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LocationView]
class LocationRoute extends _i15.PageRouteInfo<LocationRouteArgs> {
  LocationRoute({
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          LocationRoute.name,
          args: LocationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LocationRoute';

  static const _i15.PageInfo<LocationRouteArgs> page =
      _i15.PageInfo<LocationRouteArgs>(name);
}

class LocationRouteArgs {
  const LocationRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'LocationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.LoginView]
class LoginRoute extends _i15.PageRouteInfo<void> {
  const LoginRoute({List<_i15.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OnboardingView]
class OnboardingRoute extends _i15.PageRouteInfo<void> {
  const OnboardingRoute({List<_i15.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i10.PhoneView]
class PhoneRoute extends _i15.PageRouteInfo<PhoneRouteArgs> {
  PhoneRoute({
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          PhoneRoute.name,
          args: PhoneRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PhoneRoute';

  static const _i15.PageInfo<PhoneRouteArgs> page =
      _i15.PageInfo<PhoneRouteArgs>(name);
}

class PhoneRouteArgs {
  const PhoneRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'PhoneRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i11.ProductDetailView]
class ProductDetailRoute extends _i15.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    _i16.Key? key,
    required _i17.ProductModel product,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          ProductDetailRoute.name,
          args: ProductDetailRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static const _i15.PageInfo<ProductDetailRouteArgs> page =
      _i15.PageInfo<ProductDetailRouteArgs>(name);
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({
    this.key,
    required this.product,
  });

  final _i16.Key? key;

  final _i17.ProductModel product;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i12.ProductGridView]
class ProductGridRoute extends _i15.PageRouteInfo<ProductGridRouteArgs> {
  ProductGridRoute({
    _i16.Key? key,
    required _i18.CategoryModel category,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          ProductGridRoute.name,
          args: ProductGridRouteArgs(
            key: key,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductGridRoute';

  static const _i15.PageInfo<ProductGridRouteArgs> page =
      _i15.PageInfo<ProductGridRouteArgs>(name);
}

class ProductGridRouteArgs {
  const ProductGridRouteArgs({
    this.key,
    required this.category,
  });

  final _i16.Key? key;

  final _i18.CategoryModel category;

  @override
  String toString() {
    return 'ProductGridRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i13.SearchView]
class SearchRoute extends _i15.PageRouteInfo<void> {
  const SearchRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i14.VerificationView]
class VerificationRoute extends _i15.PageRouteInfo<VerificationRouteArgs> {
  VerificationRoute({
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          VerificationRoute.name,
          args: VerificationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'VerificationRoute';

  static const _i15.PageInfo<VerificationRouteArgs> page =
      _i15.PageInfo<VerificationRouteArgs>(name);
}

class VerificationRouteArgs {
  const VerificationRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'VerificationRouteArgs{key: $key}';
  }
}
