import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/view/favorite/favorite_view_model.dart';
import 'package:nectar/widget/button/primary_button.dart';
import 'package:nectar/widget/card/favorite_card.dart';
import 'package:provider/provider.dart';

@RoutePage()
class FavoriteView extends StatelessWidget {
  const FavoriteView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoriteViewModel(),
      builder: (context, _) {
        final model = context.watch<FavoriteViewModel>();
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Favorites'),
          ),
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: model.favorite.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        FavoriteCard(
                          index: index,
                          product: model.favorite[index],
                        )
                      ],
                    );
                  },
                ),
              ),
              PrimaryButton.primary(
                  title: 'Add All To Cart',
                  onPressed: () {},
                  color: Theme.of(context).primaryColor),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        );
      },
    );
  }
}
