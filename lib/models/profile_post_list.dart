import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Components/post_text.dart';

class PostDetails {
  final List postInfo = [
    [
      'assets/image/news1.jpg',
      'News: Cybersecurity',
      'Philippines Cybersecurity: Expert says EOs needed to boost cybersecurity',
      '25th Oct',
      '12:30 pm'
    ],
    [
      'assets/image/news2.jpg',
      'News: Economy',
      'Jobs, housing, consumer and economy news that matters',
      '16th Jan',
      '07:11 pm'
    ],
  ];
}

class ProfilePostList extends StatelessWidget {
  ProfilePostList({
    super.key,
  });
  final post = PostDetails();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: post.postInfo.length,
        itemBuilder: (context, index) {
          final postIndex = post.postInfo[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: SizedBox(
              height: 100,
              child: Row(children: [
                Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.white),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(postIndex[0])))),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PostText1(text: postIndex[1]),
                    PostText2(text: postIndex[2]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/calendar_icon.svg'),
                              const SizedBox(
                                width: 5,
                              ),
                              PostText1(text: postIndex[3])
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('assets/time_icon.svg'),
                              const SizedBox(
                                width: 5,
                              ),
                              PostText1(text: postIndex[4]),
                            ],
                          )
                        ])
                  ],
                )),
              ]),
            ),
          );
        },
      ),
    );
  }
}
