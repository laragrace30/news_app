import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/screens/my_home_page.dart';
import 'package:news_app/Components/styles.dart'; // Make sure to provide the correct path
import 'package:news_app/screens/news_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const MyHomePage(),
    const NewsDetail(),
    // const MyProfile(),
    // const MyProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // '/profile': (context) => const MyProfile(),
        '/news_detail': (context) => const NewsDetail(),
        '/my_home_page': (context) => const MyHomePage(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kLighterWhite,
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: kWhite,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? SvgPicture.asset('assets/home_selected_icon.svg')
                  : SvgPicture.asset('assets/home_unselected_icon.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? SvgPicture.asset('assets/bookmark_selected_icon.svg')
                  : SvgPicture.asset('assets/bookmark_unselected_icon.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? SvgPicture.asset('assets/notification_selected_icon.svg')
                  : SvgPicture.asset('assets/notification_unselected_icon.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? SvgPicture.asset('assets/profile_selected_icon.svg')
                  : SvgPicture.asset('assets/profile_unselected_icon.svg'),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
