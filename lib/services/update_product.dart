import 'package:flutter/cupertino.dart';

import '../helper/api.dart';
import '../models/productModel.dart';

class UpdateProduct {
  Future<ProductModel> updataProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      @required String? category}) async {
    Map<String, dynamic> data =
        await Api().Put(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': category,
    });
    return ProductModel.fromJson(data);
  }
}
