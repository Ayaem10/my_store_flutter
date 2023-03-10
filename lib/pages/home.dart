import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store2/models/productModel.dart';
import 'package:store2/services/all_product.dart';
import 'package:store2/widgets/customCard.dart';
import 'dart:io';

class homePage extends StatelessWidget {
  const homePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'New Trend',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
        child: FutureBuilder<List<ProductModel>>(
          future: GetAllProducts().getallProducts(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              List<ProductModel> products = snapshot.data!;

              return GridView.builder(
                  itemCount: products.length,
                  clipBehavior: Clip.none,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.5,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 100),
                  itemBuilder: (context, index) {
                    return CustomCard(
                      product: products[index],
                    );
                  });
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
