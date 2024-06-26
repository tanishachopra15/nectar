import 'dart:developer';

import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/supabase.dart';

class FavoriteService {
  final user = supabase.auth.currentUser;
  Future<List<ProductModel>> addFavorites(ProductModel product) async {
    log('get favorite function');
    final data = await supabase.from('user_favorite').upsert({
      'user_id': user!.id,
      'product_id': product.id,
    });
    return [];
  }

  Future<List<ProductModel>> getFavorites() async {
    log('get favorites function called');
    final data = await supabase
        .from('user_favorite')
        .select('*,product(*)')
        .eq('user_id', user!.id);
    print('get favorites ${data}');
    var parsedData =
        data.map((e) => ProductModel.fromMap(e['product'])).toList();
    log("This is the parsed Data ${parsedData.toString()}");
    return parsedData;
  }

  Future<void> removeFavorite(int productId) async {
    final data = await supabase
        .from('user_favorite')
        .delete()
        .eq('product_id', productId)
        .eq('user_id', user!.id);
    log(data);
  }

  isLiked(int productId) async {
    try {
      final data = await supabase
          .from('user_favorite')
          .select()
          .eq('product_id', productId)
          .eq('user_id', user!.id);
      if (data.isEmpty) {
        return false;
      }
      return data.isNotEmpty;
    } catch (e) {
      print(e);
    }
  }
}
