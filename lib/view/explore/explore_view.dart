import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/view/home/home_view_model.dart';
import 'package:nectar/widget/textfield/primary_search_textfiled.dart';
import 'package:provider/provider.dart';

@RoutePage()
class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<HomeViewModel>();
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Find Products',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              child: PrimarySearchTextfiled(
                onTap: model.navigateToSearch,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      crossAxisSpacing: 14,
                      mainAxisSpacing: 14,
                      childAspectRatio: 0.69,
                      maxCrossAxisExtent: 174),
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: model.navigateToBreverages,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'asset/images/explore_veg_image.png',
                              width: 111,
                              height: 74,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Frash Fruits\n& Vegetable',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(fontFamily: 'Gilroy-Bold'),
                            )
                          ],
                        ),
                      ),
                    );
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
