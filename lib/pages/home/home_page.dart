// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//  
import 'package:xay_dung_giao_dien_flutter/pages/home/widgets/home_appbar.dart';
import 'package:xay_dung_giao_dien_flutter/pages/home/widgets/home_list_category.dart';
import 'package:xay_dung_giao_dien_flutter/pages/home/widgets/home_search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:20.0),
        child: SafeArea(
          child: Column(
            children: [
              
              HomeAppBar(),
              SizedBox(
                height: 20.0,
              ),
              HomeSearch(),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: HomeLisCategory()
              ),
            ],
          ),
        ),
      ),
    );
  }
}
