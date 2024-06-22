import 'dart:developer';

import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/supabase.dart';

class ProductService {
  Future<List<ProductModel>> getproducts() async {
    print('get products function');
    final data =
        await supabase.from('product').select('*,brand(*),category(*)');
    print(data);
    var parsedData =  data.map((e) => ProductModel.fromMap(e)).toList();
    log("This is the parsed Data ${parsedData.toString()}");
    return parsedData;
  }
}
