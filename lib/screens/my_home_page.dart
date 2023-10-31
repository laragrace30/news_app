import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/Components/horizontal_grid.dart';
import 'package:news_app/Components/search_tags.dart';
import 'package:news_app/Components/short_for_you.dart';
import '../Components/styles.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 50,
          ),
          children: [
            Row(
              children: [
                GestureDetector( // Wrap with GestureDetector
                  onTap: () {
                    Navigator.pushNamed(context, '/profile_screen');
                  },
                  child: Container(
                    height: 55,
                    width: 51,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      color: kLightBlue,
                      image: const DecorationImage(
                        image: AssetImage('assets/image/profile.jpg'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back',
                      style: kPoppinsBold.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Monday, 31 October',
                      style: kPoppinsRegular.copyWith(
                        color: kGrey,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                color: kWhite,
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
                  Expanded(
                    child: TextField(
                      style: kPoppinsRegular.copyWith(
                        color: kBlue,
                        fontSize: 16,
                      ),
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 13,
                        ),
                        hintText: 'Search for article...',
                        border: kBorder,
                        errorBorder: kBorder,
                        disabledBorder: kBorder,
                        focusedBorder: kBorder,
                        focusedErrorBorder: kBorder,
                        hintStyle: kPoppinsRegular.copyWith(
                          color: kLightGrey,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: kBlue,
                      borderRadius: BorderRadius.circular(kBorderRadius),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/search_icon.svg'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SearchTags(),
            const SizedBox(
              height: 20,
            ),
            HorizontalGrid(),
            const SizedBox(
              height: 15,
            ),
            ShortForYou(),
          ],
        ),
      ),
    );
  }
}