import 'package:flutter/material.dart';
import 'package:xay_dung_giao_dien_flutter/apps/router/router.dart';
// import 'package:xay_dung_giao_dien_flutter/pages/category/category_page.dart';
// import 'package:xay_dung_giao_dien_flutter/pages/product/product_page.dart';

// import 'home/home_page.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: RouterCostom.router,
    
    );
  }
}