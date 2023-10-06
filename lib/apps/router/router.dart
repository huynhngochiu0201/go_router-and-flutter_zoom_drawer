import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xay_dung_giao_dien_flutter/apps/router/router_name.dart';
import 'package:xay_dung_giao_dien_flutter/pages/category/category_page.dart';
import 'package:xay_dung_giao_dien_flutter/pages/home/home_page.dart';
// import 'package:xay_dung_giao_dien_flutter/pages/home/home_page.dart';
import 'package:xay_dung_giao_dien_flutter/pages/product/product_page.dart';

import '../../pages/root_page.dart';

class RouterCostom {
  static final GoRouter router = GoRouter(
    initialLocation:'/',
    routes: <RouteBase>[
      ShellRoute(
        builder: (context, state, child) {
          return RootPage(child: child,);

        },
        routes: [
        GoRoute(
        path: '/',
        name: RouterName.home,
        builder: (BuildContext context, GoRouterState state) {
        //  ;
          return  const HomePage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'product',
            name: RouterName.product,
            builder: (BuildContext context, GoRouterState state) {
              return const ProductPage();
            },
          ),
          GoRoute(
            path: 'category',
            name: RouterName.category,
            builder: (BuildContext context, GoRouterState state) {
              return const CategoryPage ();
            },
            routes: [
              GoRoute(
                path: 'product',
                name: RouterName.categoryProduct,
                builder: (BuildContext context, GoRouterState state) {
                  return const ProductPage();
                },
              ),
            ],
          ),
        ],
      ),
      ]),
      
    ],
  );
}
