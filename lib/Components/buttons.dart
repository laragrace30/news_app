import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Buttons extends StatelessWidget {
  final String icons;

  const Buttons({Key? key, required this.icons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (icons == 'bookmark') {
      return Container(
        width: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
        ),
        child: IconButton(
          icon: SvgPicture.asset('assets/bookmark_white_icon.svg'),
          onPressed: null, 
        ),
      );
    } else {
      return Container(
        width: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
        ),
        child: IconButton(
          icon: SvgPicture.asset('assets/arrow_back_icon.svg'),
          onPressed: () {
            Navigator.pushNamed(context, '/my_home_page');
          },
        ),
      );
    }
  }
}
