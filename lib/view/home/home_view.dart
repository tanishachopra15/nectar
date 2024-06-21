import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/core/viewmodel/login_view_model.dart';
import 'package:nectar/widget/card/product_card.dart';
import 'package:nectar/widget/textfield/primary_search_textfiled.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<LoginViewModel>();
    PageController page = PageController();
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.asset('asset/icon/carrot_logo.png'),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('asset/icon/location_icon.svg'),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Dhaka, Banassre',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: const Color(0xff4C4F4D),
                          ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  child: PrimarySearchTextfiled(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 114,
                        child: PageView.builder(
                          controller: page,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Image.asset(
                                'asset/images/home_banner_image.png');
                          },
                        ),
                      ),
                      Positioned(
                        left: 138,
                        bottom: 15,
                        child: SmoothPageIndicator(
                          controller: page,
                          count: 3,
                          effect: const ExpandingDotsEffect(
                            dotHeight: 5,
                            dotWidth: 5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Exclusive Offer',
                          style: Theme.of(context).textTheme.displayLarge),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'See all',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: const Color(0xff53B175),
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const ProductCard(
                        image: 'asset/images/home_banana_image.png',
                        productname: 'Organic Bananas',
                        description: '7pcs, Priceg',
                        price: "\$ 4.99",
                      );
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Best Selling',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Gillroy',
                          fontWeight: FontWeight.w600,
                          color: Color(0xff181725),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'See all',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: const Color(0xff53B175),
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const ProductCard(
                        image: 'asset/images/home_banana_image.png',
                        productname: 'Organic Bananas',
                        description: '7pcs, Priceg',
                        price: "\$ 4.99",
                      );
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Groceries',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Gillroy',
                          fontWeight: FontWeight.w600,
                          color: Color(0xff181725),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'See all',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: const Color(0xff53B175),
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 105,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffF8A44C),
                              borderRadius: BorderRadius.circular(18)),
                          alignment: Alignment.center,
                          width: 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('asset/images/home_pulses_image.png'),
                              const Text(
                                'Pulses',
                                style: TextStyle(
                                    fontFamily: 'Gilroy',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff3E423F)),
                              ),
                              const SizedBox(
                                width: 14,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(0),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const ProductCard(
                        image: 'asset/images/home_banana_image.png',
                        productname: 'Organic Bananas',
                        description: '7pcs, Priceg',
                        price: "\$ 4.99",
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(
          color: Color(0xff181725),
        ),
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: const TextStyle(
          color: Color(0xff181725),
        ),
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'asset/icon/home_shop_icon.svg',
                color: const Color(0xff181725),
              ),
            ),
            label: 'Shop',
            backgroundColor: const Color(0xffFFFFFF),
          ),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: model.navigateToExplore,
                icon: SvgPicture.asset(
                  'asset/icon/home_explore_icon.svg',
                  color: const Color(0xff181725),
                ),
              ),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'asset/icon/home_cart_icon.svg',
                  color: const Color(0xff181725),
                ),
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Color(0xff181725),
                ),
              ),
              label: 'Favorite'),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: model.navigateToAccount,
                icon: SvgPicture.asset(
                  'asset/icon/home_account_icon.svg',
                  color: const Color(0xff181725),
                ),
              ),
              label: 'Account')
        ],
      ),
    );
  }
}
