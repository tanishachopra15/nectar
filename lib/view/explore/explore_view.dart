import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/view/explore/explore_view_model.dart';
import 'package:nectar/widget/textfield/primary_search_textfiled.dart';
import 'package:provider/provider.dart';

@RoutePage()
class ExploreView extends StatelessWidget {
  const ExploreView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ExploreViewModel(),
        builder: (context, _) {
          final model = context.watch<ExploreViewModel>();
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 25),
                    child: PrimarySearchTextfiled(
                      onTap: model.navigateToSearch,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                crossAxisSpacing: 14,
                                mainAxisSpacing: 14,
                                childAspectRatio: 0.69,
                                maxCrossAxisExtent: 174),
                        itemCount: model.categories.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              model.navigateToBreverages(
                                  model.categories[index]);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color:
                                    Colors.primaries[index].withOpacity(0.15),
                                border: Border.all(
                                  color:
                                      Colors.primaries[index].withOpacity(0.15),
                                ),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.network(
                                    model.categories[index].image,
                                    width: 111,
                                    height: 74,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    model.categories[index].name,
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
        });
  }
}
