import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/view/home/home_view_model.dart';
import 'package:nectar/widget/card/category_card.dart';
import 'package:nectar/widget/card/product_card.dart';
import 'package:nectar/widget/textfield/primary_search_textfiled.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    PageController page = PageController();
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
      builder: (context, index) {
        final model = context.watch<HomeViewModel>();
        print(model.products.length);
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
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    color: const Color(0xff4C4F4D),
                                  ),
                        )
                      ],
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 25),
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 25),
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
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 15,
                          );
                        },
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        scrollDirection: Axis.horizontal,
                        itemCount: model.products.length,
                        itemBuilder: (context, index) {
                          return ProductCard(
                            onTap: () {
                              model.navigateToProductDetails(
                                  model.products[index]);
                            },
                            product: model.products[index],
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 25),
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
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 15,
                          );
                        },
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        scrollDirection: Axis.horizontal,
                        itemCount: model.products.length,
                        itemBuilder: (context, index) {
                          return ProductCard(
                            product: model.products[index],
                            onTap: () {
                              model.navigateToProductDetails(
                                  model.products[index]);
                            },
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 25),
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
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 15,
                          );
                        },
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: model.categories.length,
                        itemBuilder: (context, index) {
                          return CategoryCard(
                            index: index,
                            category: model.categories[index],
                            onTap: () {
                              model.navigateToBreverages(
                                  model.categories[index]);
                            },
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 250,
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 15,
                          );
                        },
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        scrollDirection: Axis.horizontal,
                        itemCount: model.products.length,
                        itemBuilder: (context, index) {
                          return ProductCard(
                            product: model.products[index],
                            onTap: () {
                              model.navigateToProductDetails(
                                  model.products[index]);
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
