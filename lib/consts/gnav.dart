import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class gnav extends StatefulWidget {
  const gnav({Key? key}) : super(key: key);

  @override
  _gnavState createState() => _gnavState();
}

class _gnavState extends State<gnav> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Center(child: Text("Home")),
    const Center(child: Text("Bookmarks")),
    const Center(child: Text("Search")),
    const Center(child: Text("Profile")),
    // Add new tab content here
    const Center(child: Text("Notifications")),
    const Center(child: Text("Settings")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: kBottomNavigationBarHeight,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: GNav(
            backgroundColor: Colors.greenAccent,
            hoverColor: Colors.lightGreenAccent,
            haptic: true,
            tabBorderRadius: 15,
            tabActiveBorder: Border.all(color: Colors.redAccent, width: 1),
            tabBorder: Border.all(color: Colors.grey, width: 1),
            tabShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8),
            ],
            curve: Curves.easeOutExpo,
            duration: const Duration(milliseconds: 900),
            gap: 8,
            color: Colors.grey[800],
            activeColor: const Color.fromARGB(255, 176, 135, 39),
            iconSize: 24,
            tabBackgroundColor: Colors.white10.withOpacity(0.1),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.bookmark_add,
                text: 'Bookmarks',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.person_3,
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: gnav(),
  ));
}