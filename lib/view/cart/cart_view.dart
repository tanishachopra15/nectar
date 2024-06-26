import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/viewmodel/cart_view_model.dart';
import 'package:nectar/widget/button/primary_button.dart';
import 'package:nectar/widget/card/cart_card.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CartViewModel>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Cart'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: model.cart.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CartCard(index: index, product: model.cart[index])
                  ],
                );
              },
            ),
          ),
          PrimaryButton.primary(
              title: 'Go to Checkout',
              onPressed: () {},
              color: Theme.of(context).primaryColor),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
