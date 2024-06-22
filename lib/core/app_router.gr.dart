// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;
import 'package:nectar/app_wrapper.dart' as _i3;
import 'package:nectar/view/account/account_view.dart' as _i1;
import 'package:nectar/view/beverages/beverages_view.dart' as _i2;
import 'package:nectar/view/cart/cart_view.dart' as _i4;
import 'package:nectar/view/explore/explore_view.dart' as _i5;
import 'package:nectar/view/favorite/favorite_view.dart' as _i6;
import 'package:nectar/view/home/home_view.dart' as _i7;
import 'package:nectar/view/login/location_view.dart' as _i8;
import 'package:nectar/view/login/login_view.dart' as _i9;
import 'package:nectar/view/login/phone_view.dart' as _i11;
import 'package:nectar/view/login/verification_view.dart' as _i14;
import 'package:nectar/view/onboarding/onboarding_view.dart' as _i10;
import 'package:nectar/view/productdetail/product_detail_view.dart' as _i12;
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
    BeveragesRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BeveragesView(),
      );
    },
    AppScaffold.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.AppWrapper(),
      );
    },
    CartRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CartView(),
      );
    },
    ExploreRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ExploreView(),
      );
    },
    FavoriteRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.FavoriteView(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomeView(),
      );
    },
    LocationRoute.name: (routeData) {
      final args = routeData.argsAs<LocationRouteArgs>(
          orElse: () => const LocationRouteArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.LocationView(key: args.key),
      );
    },
    LoginRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.LoginView(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.OnboardingView(),
      );
    },
    PhoneRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneRouteArgs>(
          orElse: () => const PhoneRouteArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.PhoneView(key: args.key),
      );
    },
    ProductDetailRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ProductDetailView(),
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
/// [_i2.BeveragesView]
class BeveragesRoute extends _i15.PageRouteInfo<void> {
  const BeveragesRoute({List<_i15.PageRouteInfo>? children})
      : super(
          BeveragesRoute.name,
          initialChildren: children,
        );

  static const String name = 'BeveragesRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i3.BottomNavigation]
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
/// [_i4.CartView]
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
/// [_i5.ExploreView]
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
/// [_i6.FavoriteView]
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
/// [_i7.HomeView]
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
/// [_i8.LocationView]
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
/// [_i9.LoginView]
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
/// [_i10.OnboardingView]
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
/// [_i11.PhoneView]
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
/// [_i12.ProductDetailView]
class ProductDetailRoute extends _i15.PageRouteInfo<void> {
  const ProductDetailRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ProductDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
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
