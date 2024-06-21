import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/widget/card/breverage_card.dart';

@RoutePage()
class BeveragesView extends StatelessWidget {
  const BeveragesView({super.key});

  @override
  Widget build(BuildContext context) {
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
                  'Breverages',
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
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      crossAxisSpacing: 14,
                      mainAxisSpacing: 14,
                      childAspectRatio: 0.69,
                      maxCrossAxisExtent: 173),
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    return const BreverageCard(
                        image: 'asset/images/breverage_coke_image.png',
                        productname: 'Diet Coke',
                        description: '355ml,Price',
                        price: '\$1.99');
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
