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
      backgroundColor: Theme.of(context).navigationBarTheme.backgroundColor,
      elevation: 40,
      iconSize: 10,
      selectedFontSize: 15,
      selectedIconTheme: IconThemeData(color: Colors.white, size: 12),
      selectedItemColor: Colors.white,
      unselectedIconTheme: IconThemeData(color: Colors.red, size: 12),
      unselectedItemColor: Colors.red,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
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
