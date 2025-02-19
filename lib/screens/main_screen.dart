import 'package:dog_care/screens/auth/pages/home_page.dart';
import 'package:dog_care/screens/auth/pages/settings_page.dart';
import 'package:dog_care/screens/auth/pages/video_page.dart';
import 'package:dog_care/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int bottomSelectedIndex = 0;

  late PageController _pageController;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  void pageChanged(int pageIndex) {
    setState(() {
      bottomSelectedIndex = pageIndex;
    });
  }

  // void bottomTapped(int pageIndex) {
  //   setState(
  //         () {
  //       bottomSelectedIndex = pageIndex;
  //       print(pageIndex);
  //       _pageController.animateToPage(
  //         pageIndex,
  //         duration: Duration(milliseconds: 300),
  //         curve: Cubic(0, 0.5, 0.7, 1),
  //       );
  //     },
  //   );
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second screen")),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        reverse: true,
        onPageChanged: (pageIndex) {
          setState(() {
            bottomSelectedIndex = pageIndex;
          });
        },
        children: <Widget>[
          HomePage(),
          VideoPage(),
          SettingsPage(),
        ],
      ),

      bottomNavigationBar: NavBar(
        bottomSelectedIndex: bottomSelectedIndex,
        onSelectTab: (index) {
          setState(() {
            bottomSelectedIndex = index;
          });
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }
}

