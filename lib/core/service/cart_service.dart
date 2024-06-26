import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/supabase.dart';

class CartService extends ChangeNotifier {
  final user = supabase.auth.currentUser;
  Future<List<ProductModel>> addToCart(ProductModel product) async {
    log('get favorite function');
    final data = await supabase.from('user_cart').upsert({
      'user_id': user!.id,
      'product_id': product.id,
    });
    return [];
  }

  Future<List<ProductModel>> getCart() async {
    log('get favorites function called');
    final data = await supabase
        .from('user_cart')
        .select('*,product(*)')
        .eq('user_id', user!.id);
    print('get favorites ${data}');
    var parsedData =
        data.map((e) => ProductModel.fromMap(e['product'])).toList();
    log("This is the parsed Data ${parsedData.toString()}");
    return parsedData;
  }

    Future<void> removeFavorite(ProductModel product) async {
    final data = await supabase
        .from('user_cart')
        .delete()
        .eq('product_id', product.id)
        .eq('user_id', user!.id);
    log(data);
  }
}
