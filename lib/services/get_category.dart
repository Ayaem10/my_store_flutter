import 'package:store2/helper/api.dart';
import 'package:store2/models/productModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GetCategory {
  Future<List<ProductModel>> getcategory({required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<ProductModel> productlist = [];

    for (int i = 0; i < data.length; i++) {
      productlist.add(ProductModel.fromJson(data[i]));
    }
    return productlist;
  }
}
