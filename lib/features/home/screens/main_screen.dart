import 'package:dog_care/features/home/screens/pages/home_page.dart';
import 'package:dog_care/features/home/screens/pages/settings_page.dart';
import 'package:dog_care/features/home/screens/pages/video_page.dart';
import 'package:dog_care/features/theme/light_theme/text_theme.dart';
import 'package:dog_care/shared/components/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../theme/bloc_theme/theme_bloc.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dog care",
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          BlocBuilder<ThemeBloc, bool>(builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Switch(
                  value: state,
                  onChanged: (bool val) {
                    context.read<ThemeBloc>().add(ChangeTheme());
                  }),
            );
          }),
        ],
      ),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
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
