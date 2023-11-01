import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/carousel_list.dart';
import '../Components/buttons.dart';
import '../Components/nav_bar.dart';

class NewsDetail extends StatefulWidget {
  const NewsDetail({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  final int selectedIndex;
  final void Function(int) onItemTapped;

  @override
  _NewsDetailState createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final CarouselList carouselList = CarouselList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider.builder(
            carouselController: _controller,
            itemCount: carouselList.cardList.length,
            itemBuilder: (context, index, realIndex) {
              final curImage = carouselList.cardList[index].image;
              return buildImage(curImage, index);
            },
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
              autoPlay: false,
              initialPage: _current,
              height: MediaQuery.of(context).size.height / 1.9,
              enableInfiniteScroll: true,
            ),
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Buttons(icons: 'assets/arrow_back_icon.svg'),
                  Buttons(icons: 'assets/bookmark_white_icon.svg'),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    _controller.animateToPage(0,
                        duration: const Duration(milliseconds: 500));
                  },
                  icon: SvgPicture.asset(
                    _current == 0
                        ? 'assets/carousel_indicator_enabled.svg'
                        : 'assets/carousel_indicator_disabled.svg',
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _controller.animateToPage(1,
                        duration: const Duration(milliseconds: 500));
                  },
                  icon: SvgPicture.asset(
                    _current == 1
                        ? 'assets/carousel_indicator_enabled.svg'
                        : 'assets/carousel_indicator_disabled.svg',
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _controller.animateToPage(2,
                        duration: const Duration(milliseconds: 500));
                  },
                  icon: SvgPicture.asset(
                    _current == 2
                        ? 'assets/carousel_indicator_enabled.svg'
                        : 'assets/carousel_indicator_disabled.svg',
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            top: MediaQuery.of(context).size.height / 2.05,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2.25,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                ),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ListView(
                  children: [
                    Text(
                      carouselList.cardList[_current].title,
                      maxLines: 4,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 236, 240, 236),
                        border: Border.all(color: Colors.black, width: 0.5),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/profile_screen');
                            },
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  carouselList.cardList[_current].profileImage),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            '${carouselList.cardList[_current].author}  ${carouselList.cardList[_current].date}  ●  ${carouselList.cardList[_current].time}',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      carouselList.cardList[_current].description,
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavBar(
        selectedIndex: widget.selectedIndex,
        onItemTapped: widget.onItemTapped,
      ),
    );
  }

  Widget buildImage(String curImage, int index) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      width: double.infinity,
      child: Image.asset(
        curImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
