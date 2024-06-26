import 'package:flutter/material.dart';
import 'package:nectar/core/model/product_model.dart';

class FavoriteCard extends StatelessWidget {
  final ProductModel product;
  final int index;
  const FavoriteCard({
    super.key,
    required this.index,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Row(
        children: [
          Image.network(
            product.images[index],
            width: 34,
            height: 54,
          ),
          const SizedBox(
            width: 42,
          ),
          Expanded(
            child: Column(
              children: [
                Text(product.name), 
              Text(product.description)],
            ),
          ),
          const SizedBox(
            width: 85,
          ),
          Text(product.price.toString()),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_arrow_right_rounded),
          )
        ],
      ),
    );
  }
}
