
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/profile_post_list.dart';

import '../Components/post_text.dart';
import '../Components/trends.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.transparent),
            child: Padding(
              padding: EdgeInsets.zero,
              child: Row(children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/image/profile.jpg')),
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(16)),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lara Grace Riconalla',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Author & Writer',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFF5474FD)),
                    child: Text(
                      'Following',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Hello everyone! Every piece of chocolate I ever ate is getting back at me.. desserts are very revengeful.. ",
            textAlign: TextAlign.justify,
            style: GoogleFonts.poppins(
                color: const Color(0xFF9397A0),
                fontWeight: FontWeight.w400,
                height: 1.2,
                fontSize: 14),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: 95,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color(0xFF19202D)),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(text1: '20,873'),
                        MyText2(text2: 'Followers')
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: Color(0xFFC1D4F9),
                    width: 5,
                    endIndent: 10,
                    indent: 10,
                    thickness: 1,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(text1: '100'),
                        MyText2(text2: 'Posts')
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: Color(0xFFC1D4F9),
                    width: 5,
                    endIndent: 10,
                    indent: 10,
                    thickness: 1,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(text1: '355'),
                        MyText2(text2: 'Following')
                      ],
                    ),
                  ),
                ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Lara's Post",
            style: GoogleFonts.poppins(
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          Text(
            'View All',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Color(0xFF5474FD),
                    fontSize: 12,
                    fontWeight: FontWeight.w400)),
          )
        ],
      ),
    ),
          const SizedBox(
            height: 20,
          ),
          ProfilePostList(),
          const SizedBox(
            height: 20,
          ),
          const Text('Popular from Lara'),
          const SizedBox(
            height: 20,
          ),
          const PopularPost(),
        ]),
      ),
    );
  }
}
