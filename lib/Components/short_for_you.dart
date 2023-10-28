import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'styles.dart';

class ShortForYou extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'image': 'assets/image/tour1.png',
      'title': 'Top Trending Islands in 2023',
      'views': 40999,
    },
    {
      'image': 'assets/image/tour2.png',
      'title': 'China Trading',
      'views': 40999,
    },
    {
      'image': 'assets/image/tour3.jpg',
      'title': 'Top Places in the Philippines',
      'views': 40999,
    },
  ];

  ShortForYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Short for You',
              style: kPoppinsBold.copyWith(
                fontSize: 15,
              ),
            ),
            Text(
              'View all',
              style: kPoppinsMedium.copyWith(
                color: kBlue,
                fontSize: 12,
              ),
            ),
          ],
        ),
        const SizedBox(height: 19),
        SizedBox(
          height: 88,
          child: ListView.builder(
            itemCount: items.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final item = items[index];
              return Container(
                padding: const EdgeInsets.all(9),
                margin: const EdgeInsets.only(
                  right: 20,
                ),
                width: 208,
                height: 88,
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  boxShadow: [
                    BoxShadow(
                      color: kDarkBlue.withOpacity(0.051),
                      offset: const Offset(0.0, 3.0),
                      blurRadius: 24.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      padding: const EdgeInsets.all(12), // Adjust padding
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorderRadius),
                        image: DecorationImage(
                          scale: 0.2,
                          image: AssetImage(item['image']), // Use AssetImage for local images
                        ),
                      ),
                      child: Transform.scale(
                            scale: 0.4,
                            child: SvgPicture.asset(
                            'assets/play_icon.svg',
                          ),
                        ),
                      ),
                    const SizedBox(
                      width: 12),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            item['title'],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: kPoppinsSemibold.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 15),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/eye_icon.svg',
                              ),
                              const SizedBox(width: 4),
                              Text(
                                item['views'].toString(),
                                style: kPoppinsMedium.copyWith(
                                  color: kGrey,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
