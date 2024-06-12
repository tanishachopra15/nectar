import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/viewmodel/cart_view_model.dart';
import 'package:nectar/view/cart/cart_body.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CartViewModel>();
    // return ChangeNotifierProvider(
    //     create: (context) => CartViewModel(),
    //     builder: (context, child) {
    //       final model = context.watch<CartViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart view'),
      ),
      body: const CartBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Stack(
                children: [
                  const Icon(Icons.shopping_cart),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10)),
                      width: 15,
                      height: 15,
                      alignment: Alignment.center,
                      child: Text(
                        model.items.length.toString(),
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              label: 'cart'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'cart'),
        ],
      ),
    );
  }
}
