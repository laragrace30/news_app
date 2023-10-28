import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Stories {
  final List _stories = [
    ['assets/story1.png', 'Top 22 Islands of PH in 2023 ', '45,932'],
    ['assets/story2.png', 'Discover the beauty of China Town', '54,045'],
    [
      'assets/post3.png',
      'Explore Bohol: Your Next Travel Destination Awaits!',
      '54,045'
    ]
  ];
}

class Popular {
  final posts = [
    'assets/image/popular1.jpg',
    'assets/image/popular2.jpg',
    'assets/image/popular3.jpg',
  ];
}

class Trends extends StatelessWidget {
  const Trends({super.key});

  @override
  Widget build(BuildContext context) {
    final storyDetail = Stories();
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemExtent: 250,
          itemCount: storyDetail._stories.length,
          itemBuilder: (context, index) {
            final storyIndex = storyDetail._stories[index];
            return Align(
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                      leading: Stack(
                        children: [
                          Container(
                            height: 100,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(storyIndex[0]))),
                          ),
                          Positioned.fill(
                              child: IconButton(
                            icon: SvgPicture.asset('assets/play_icon.svg'),
                            onPressed: () {},
                          ))
                        ],
                      ),
                      title: Text(
                        storyIndex[1],
                        maxLines: 2,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 13,
                                height: 1,
                                fontWeight: FontWeight.w500)),
                      ),
                      subtitle: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.remove_red_eye_outlined,
                            size: 15,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            storyIndex[2],
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF9397A0),
                                    fontWeight: FontWeight.normal)),
                          )
                        ],
                      )),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
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
