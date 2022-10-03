import 'package:flutter/material.dart';
import 'package:rikodmy/models/all_product_data.dart';
import 'package:rikodmy/ui/Details/product_detail.dart';
import 'package:rikodmy/ui/home/home_screen.dart';
import 'package:rikodmy/ui/login/login_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ) {
    final AllProduct allProduct = allProductList[2];

    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.white)
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/productDetail': (context) =>  ProductDetail(allProduct: allProduct),
      },
    );
  }
}


