import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Buttons extends StatelessWidget {
  final String icons;
  const Buttons({super.key, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16)),
      child: IconButton(
        icon: icons == 'assets/arrow_back_icon.svg'
            ? SvgPicture.asset(icons)
            : SvgPicture.asset(
                icons,
              ),
        onPressed: icons == 'assets/arrow_back_icon.svg'
            ? () {
                Navigator.pushNamed(context, '/my_home_page'); 
              }
            : null,
      ),
    );
  }
}
