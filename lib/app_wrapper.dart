import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/core/app_router.gr.dart';

@RoutePage(name: 'AppScaffold')
class AppWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      // list of your tab routes
      // routes used here must be declared as children
      // routes of /dashboard
      routes: const [
        HomeRoute(),
        ExploreRoute(),
        CartRoute(),
        FavoriteRoute(),
        AccountRoute()
      ],
      // transitionBuilder: (context, child, animation) => FadeTransition(
      //   opacity: animation,
      //   // the passed child is technically our animated selected-tab page
      //   child: child,
      // ),
      builder: (context, child) {
        // obtain the scoped TabsRouter controller using context
        final tabsRouter = AutoTabsRouter.of(context);
        // Here we're building our Scaffold inside of AutoTabsRouter
        // to access the tabsRouter controller provided in this context
        //
        // alternatively, you could use a global key
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            selectedIconTheme:
                IconThemeData(color: Theme.of(context).primaryColor),
            selectedItemColor: Theme.of(context).primaryColor,
            backgroundColor: const Color(0xffFFFFFF),
            selectedLabelStyle: const TextStyle(
              color: Color(0xff181725),
            ),
            showSelectedLabels: true,
            type: BottomNavigationBarType.fixed,
            unselectedLabelStyle: const TextStyle(
              color: Color(0xff181725),
            ),
            elevation: 0,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              // here we switch between tabs
              tabsRouter.setActiveIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'asset/icon/home_shop_icon.svg',
                  color: const Color(0xff181725),
                ),
                label: 'Shop',
                backgroundColor: const Color(0xffFFFFFF),
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'asset/icon/home_explore_icon.svg',
                    color: const Color(0xff181725),
                  ),
                  label: 'Explore'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'asset/icon/home_cart_icon.svg',
                    color: const Color(0xff181725),
                  ),
                  label: 'Cart'),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Color(0xff181725),
                  ),
                  label: 'Favorite'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'asset/icon/home_account_icon.svg',
                    color: const Color(0xff181725),
                  ),
                  label: 'Account'),
            ],
          ),
        );
      },
    );
  }
}
