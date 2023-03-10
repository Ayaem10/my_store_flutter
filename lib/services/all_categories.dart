import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store2/helper/api.dart';

class AllCategories {
  Future<List<dynamic>> getallcategories() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
