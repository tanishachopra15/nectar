import 'package:auto_route/auto_route.dart';
import 'package:nectar/core/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: OnboardingRoute.page,
        ),
        // AutoRoute(page: CartRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(
          page: PhoneRoute.page,
        ),
        AutoRoute(page: VerificationRoute.page),
        AutoRoute(
          page: LocationRoute.page,
        ),
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: ProductDetailRoute.page),
        AutoRoute(page: ExploreRoute.page),
        AutoRoute(page: BeveragesRoute.page),
        AutoRoute(page: SearchRoute.page),
        AutoRoute(page: AccountRoute.page)
      ];
}
