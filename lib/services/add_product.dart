import 'package:store2/helper/api.dart';
import 'package:store2/models/productModel.dart';

class AddProduct {
  Future<ProductModel> addProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required String category}) async {
    Map<String, dynamic> data =
        await Api().Post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': category,
    });
    return ProductModel.fromJson(data);
  }
}
