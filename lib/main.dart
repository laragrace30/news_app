import 'package:flutter/material.dart';
import 'package:news_app/screens/my_home_page.dart';
import 'package:news_app/screens/news_detail.dart';
import 'package:news_app/screens/profile_screen.dart';

import 'Components/nav_bar.dart';
import 'Components/styles.dart';

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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const MyHomePage(),
      NewsDetail(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ),
      const ProfileScreen(),
    ];

    return MaterialApp(
      routes: {
        '/profile_screen': (context) => const ProfileScreen(),
        '/news_detail': (context) => NewsDetail(
                                      selectedIndex: _selectedIndex,
                                      onItemTapped: _onItemTapped,
                                    ),
        '/my_home_page': (context) => const MyHomePage(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kLighterWhite, 
        body: pages[_selectedIndex],
        bottomNavigationBar: NavBar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}
