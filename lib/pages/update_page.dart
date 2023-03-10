import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store2/models/productModel.dart';
import 'package:store2/services/update_product.dart';
import 'package:store2/widgets/button.dart';
import 'package:store2/widgets/text_field.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});
  static String id = 'update product';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? ProductName, desc, image;

  String? Price;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
        inAsyncCall: isLoading,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Upgrade product',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 100,
              ),
              CustomTextField(
                  onChanged: (data) {
                    ProductName = data;
                  },
                  hintText: 'product name'),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  onChanged: (data) {
                    desc = data;
                  },
                  hintText: 'Description'),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  inputtype: TextInputType.number,
                  onChanged: (data) {
                    Price = data;
                  },
                  hintText: 'Price'),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  onChanged: (data) {
                    image = data;
                  },
                  hintText: 'Image'),
              SizedBox(
                height: 50,
              ),
              buttonn(
                text: 'Update',
                onPressed: () {
                  isLoading = true;
                  setState(() {});
                  try {
                    updateproduct(product);
                    print('success');
                  } catch (e) {}
                  isLoading = false;
                  setState(() {});
                },
              )
            ]),
          ),
        ));
  }

  void updateproduct(ProductModel product) {
    var price2 = Price == null ? product.price : Price!;
    UpdateProduct().updataProduct(
        title: ProductName == null ? product.title : ProductName!,
        price: Price == null ? product.price.toString() : Price!,
        desc: desc == null ? product.description : desc!,
        image: image == null ? product.image : image!);
  }
}
