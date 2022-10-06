import 'package:flutter/material.dart';
import 'package:rikodmy/models/all_product_data.dart';
import 'package:rikodmy/models/expenses_data.dart';
import 'package:rikodmy/ui/home/details/product_detail.dart';
import 'package:rikodmy/ui/cart/cart_no_data.dart';
import 'package:rikodmy/ui/cart/cart_screen.dart';
import 'package:rikodmy/ui/cart/transaction/completed_transaction_cash.dart';
import 'package:rikodmy/ui/cart/transaction/completed_transaction_quotation.dart';
import 'package:rikodmy/ui/cart/transaction/file_result.dart';
import 'package:rikodmy/ui/home/home_screen.dart';
import 'package:rikodmy/ui/login/login_screen.dart';
import 'package:rikodmy/widget/nav_bar.dart';

import 'ui/customer/search_customer.dart';
import 'ui/ledger/detail/ledger_expenses_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final AllProduct allProduct = allProductList[0];

    return MaterialApp(
      theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.white)),
      initialRoute: '/login',
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => const LoginScreen(),
        '/navBar': (context) => const NavBar(),
        '/productDetail': (context) => ProductDetail(allProduct: allProduct),
        '/cartScreen': (context) =>  CartScreen(allProduct: allProduct),
        '/completeTransactionQuotation':(context) => const CompleteTransactionQuotation(),
        '/completeTransactionCash':(context) => const CompleteTransactionCash(),
        '/fileResult':(context) => const FileResult(),
        '/searchCustomer':(context) => const SearchCustomer(),
        '/cartNoData': (context) => const CartNoData(),
        
      },
    );
  }
}
