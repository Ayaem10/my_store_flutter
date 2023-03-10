import 'dart:convert';

import 'package:store2/helper/api.dart';
import 'package:store2/models/productModel.dart';
import 'package:http/http.dart' as http;

class GetAllProducts {
  Future<List<ProductModel>> getallProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');
    List<ProductModel> productlist = [];
    for (int i = 0; i < data.length; i++) {
      productlist.add(ProductModel.fromJson(data[i]));
    }
    return productlist;
  }
}
