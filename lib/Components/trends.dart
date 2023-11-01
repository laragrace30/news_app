import 'package:flutter/material.dart';

class Popular {
  final posts = [
    'assets/image/popular1.jpg',
    'assets/image/popular2.jpg',
    'assets/image/popular3.jpg',
  ];
}
class PopularPost extends StatelessWidget {
  const PopularPost({super.key,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemExtent: 200,
        itemCount: Popular().posts.length,
        itemBuilder: (context, index) {
          final popularIndex = Popular().posts;
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(popularIndex[index]))),
            ),
          );
        },
      ),
    );
  }
}
