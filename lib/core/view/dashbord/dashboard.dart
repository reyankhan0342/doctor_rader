import 'package:doc_radar_app/core/constant/util.dart';
import 'package:doc_radar_app/core/view/home_screen/home_screen.dart';
import 'package:doc_radar_app/core/view/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

class CustomDashboard extends StatefulWidget {
  const CustomDashboard({super.key});

  @override
  _CustomDashboardState createState() => _CustomDashboardState();
}

class _CustomDashboardState extends State<CustomDashboard> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => _onItemTapped(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppIcons().home,
                    width: 20,
                    color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppIcons().explore,
                    width: 20,
                    color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                  ),
                  Text(
                    'Explore',
                    style: TextStyle(
                      color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppIcons().book,
                    width: 20,
                    color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
                  ),
                  Text(
                    'Booking',
                    style: TextStyle(
                      color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppIcons().profile,
                    width: 20,
                    color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                      color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
