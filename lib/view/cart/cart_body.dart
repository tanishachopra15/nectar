import 'package:flutter/material.dart';
import 'package:nectar/core/model/item.dart';
import 'package:nectar/core/viewmodel/cart_view_model.dart';
import 'package:provider/provider.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CartViewModel>();
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: model.items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(model.items[index].name),
                trailing: IconButton(
                  onPressed: () {
                    model.removeItem(model.items[index]);
                  },
                  icon: const Icon(Icons.remove),
                ),
              );
            },
          ),
          Text('Total price ${model.totalPrice}'),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    model.add(
                      Item(
                        name: 'hello',
                      ),
                    );
                  },
                  child: const Text('Add'),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    model.removeAll();
                  },
                  child: const Text('RemoveALL'),
                )
              ],
            ),
          )
        ],
      );
  }
}