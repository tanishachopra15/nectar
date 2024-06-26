import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/view/productdetail/product_detail_view_model.dart';
import 'package:nectar/widget/button/primary_button.dart';
import 'package:nectar/widget/expantiontile/expantion_tile.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class ProductDetailView extends StatelessWidget {
  final ProductModel product;
  const ProductDetailView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    PageController page = PageController();
    log('${product.images}');
    log(product.toString());
    return ChangeNotifierProvider(
        create: (context) => ProductDetailViewModel(product),
        builder: (context, child) {
          final model = context.watch<ProductDetailViewModel>();
          return Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: ListView(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 371,
                          decoration: const BoxDecoration(
                            color: Color(0xffF2F3F2),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            ),
                          ),
                          child: PageView.builder(
                            controller: page,
                            itemCount: product.images.length,
                            itemBuilder: (context, index) {
                              log('${product.images[index]}');
                              return SizedBox(
                                height: 100,
                                child: Image.network(product.images[index]),
                              );
                            },
                          ),
                        ),
                        SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    locator<AppRouter>().maybePop();
                                  },
                                  icon: const Icon(Icons.arrow_back_ios),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.ios_share_rounded),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 138,
                          bottom: 15,
                          child: SmoothPageIndicator(
                            controller: page,
                            count: product.images.length,
                            effect: const ExpandingDotsEffect(
                              dotHeight: 5,
                              dotWidth: 5,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(product.name,
                                  style:
                                      Theme.of(context).textTheme.displayLarge),
                              IconButton(
                                onPressed: () {
                                  if (model.isLiked) {
                                    print(model.isLiked);
                                    model.addProductToFavorite(product);
                                  } else {
                                    model.removeProductToFav(product);
                                  }
                                },
                                icon: model.isLiked
                                    ? const Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      )
                                    : const Icon(Icons.favorite_border),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${product.specifications['quantity']}, Price",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                    color: const Color(0xff7C7C7C),
                                  ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 150,
                                height: 37,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      onPressed: model.decrement,
                                      icon: const Icon(
                                        Icons.remove,
                                        color: Color(0xffB3B3B3),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 45,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xffE2E2E2),
                                        ),
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                      child: Text(model.quantity.toString()),
                                    ),
                                    IconButton(
                                        onPressed: model.increment,
                                        icon: const Icon(
                                          Icons.add,
                                          color: Color(0xff53B175),
                                        ))
                                  ],
                                ),
                              ),
                              Text('\$${product.price.toStringAsFixed(2)}',
                                  style:
                                      Theme.of(context).textTheme.displayLarge)
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Divider(
                            color: Color(0xffE2E2E2),
                          ),
                          const PrimaryExpantionTile(
                              title: 'Product Detail',
                              content:
                                  'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.'),
                          const Divider(
                            color: Color(0xffE2E2E2),
                          ),
                          const PrimaryExpantionTile(
                            title: 'Nutritions',
                            content:
                                'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                            imageUrl: 'asset/icon/gram_icon.svg',
                          ),
                          const Divider(
                            color: Color(0xffE2E2E2),
                          ),
                          const PrimaryExpantionTile(
                            title: 'Review',
                            content:
                                'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                            imageUrl: 'asset/icon/rating_icon.svg',
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          PrimaryButton.primary(
                              title: 'Add to Basket',
                              onPressed: () {},
                              color: Theme.of(context).primaryColor),
                          const SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
