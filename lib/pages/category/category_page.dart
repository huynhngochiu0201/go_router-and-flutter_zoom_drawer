import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:xay_dung_giao_dien_flutter/apps/router/router_name.dart';
import 'package:xay_dung_giao_dien_flutter/mockup/item_mockup.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                    height: 10.0,
                  ),
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              itemCount: dataImages.length, 
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    context.goNamed(RouterName.categoryProduct);
                  },
                  child: AspectRatio(
                    aspectRatio: 5 / 2,
                    child: Container(
                      clipBehavior: Clip.hardEdge,// Để cắt ảnh để thấy được boderRadius
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      // margin: const EdgeInsets.only(bottom: 10),
                      child: FadeInImage.memoryNetwork(
                          placeholder: kTransparentImage,
                          fit: BoxFit.cover, // fit: BoxFit.cover là để cho nó cover lại 
                          image:
                              dataImages[index]),
                    ),
                  ),
                );
              })),
    );
  }
}
