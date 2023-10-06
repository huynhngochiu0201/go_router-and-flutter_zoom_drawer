// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:xay_dung_giao_dien_flutter/apps/router/router_name.dart';
import 'package:xay_dung_giao_dien_flutter/mockup/item_mockup.dart';

class HomeLisCategory extends StatelessWidget {
  const HomeLisCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
                  itemCount: dataImages.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 15,
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      childAspectRatio: 1),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: (){
                        context.goNamed(RouterName.product);
                      }  ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              clipBehavior: Clip.hardEdge,
                              width: double.infinity,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: FadeInImage.memoryNetwork(
                                  placeholder: kTransparentImage,
                                  fit: BoxFit.cover,
                                  image:
                                      dataImages[index]),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Center(
                              child: Text(
                            'data',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ))
                        ],
                      ),
                    );
                  },
                );
  }
}