import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  fit: BoxFit.cover,
                  image:
                      'https://images.unsplash.com/photo-1624718107552-d4a082fcfdc7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1588&q=80'),
            ),
          ),
          const Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal:20.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Việt Nam', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),),
                  SizedBox(height: 20,),
                  Text('Việt Nam là đất nước trên dải đất hình chữ S, nằm ở trung tâm khu vực Đông Nam Á, ở phía đông bán đảo Đông Dương, phía bắc giáp Trung Quốc, phía tây giáp Lào, Campuchia, phía đông nam trông ra biển Đông và Thái Bình Dương. Bờ biển Việt Nam dài 3 260 km, biên giới đất liền dài 4 510 km. Trên đất liền, từ điểm cực Bắc đến điểm cực Nam (theo đường chim bay) dài 1 650km, từ điểm cực Đông sang điểm cực Tây nơi rộng nhất 600km (Bắc bộ), 400 km (Nam bộ), nơi hẹp nhất 50km (Quảng Bình)',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400),
                            )
                ],
              ),
            ),
            
          ),
        ],
      ),
    );
  }
}
