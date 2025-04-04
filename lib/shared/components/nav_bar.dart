import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    super.key,
    required this.onSelectTab,
    required this.bottomSelectedIndex,
  });

  final Function(int) onSelectTab;
  final int bottomSelectedIndex;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.bottomSelectedIndex,
      onTap: widget.onSelectTab,
      iconSize: 10,
      selectedFontSize: 15,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.video_collection, size: 30), label: "Video"),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 30), label: "Settings"),
      ],
    );
  }
}
