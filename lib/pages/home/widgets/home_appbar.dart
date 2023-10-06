import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello ...',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text('Good morning'),
          ],
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:20.0),
          child: Icon(CupertinoIcons.bell),
        )
      ],
    );
  }
}
