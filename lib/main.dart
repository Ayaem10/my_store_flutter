import 'package:flutter/material.dart';
import 'package:store2/pages/home.dart';
import 'package:store2/pages/login_page.dart';
import 'package:store2/pages/update_page.dart';

void main() {
  runApp(storeApp());
}

class storeApp extends StatelessWidget {
  const storeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        homePage.id: (context) => homePage(),
        UpdateProductPage.id: (context) => UpdateProductPage(),
        '/login': (context) {
          return login();
        },
      },
      initialRoute: '/login',
    );
  }
}
