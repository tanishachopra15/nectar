import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/model/category_model.dart';
import 'package:nectar/view/product_grid/product_grid_view_model.dart';
import 'package:nectar/widget/card/product_card.dart';
import 'package:provider/provider.dart';

@RoutePage()
class ProductGridView extends StatelessWidget {
  final CategoryModel category;
  const ProductGridView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProductGridViewModel(category),
        builder: (context, _) {
          final model = context.watch<ProductGridViewModel>();
          return Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          locator<AppRouter>().maybePop();
                        },
                        icon: const Icon(Icons.arrow_back_ios_new_rounded),
                      ),
                      Text(
                        category.name,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('asset/icon/filter_icon.svg'),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                crossAxisSpacing: 14,
                                mainAxisSpacing: 14,
                                childAspectRatio: 0.69,
                                maxCrossAxisExtent: 173),
                        itemCount: model.products.length,
                        itemBuilder: (context, index) {
                          return ProductCard(
                              onTap: () {
                                model.navigateToProductDetails(
                                    model.products[index]);
                              },
                              product: model.products[index]);
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
