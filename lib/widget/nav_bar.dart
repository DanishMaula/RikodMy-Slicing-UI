import 'package:flutter/material.dart';
import 'package:rikodmy/ui/history/tabbar_history.dart';
import 'package:rikodmy/ui/ledger/tabbar_ledger.dart';

import '../../ui/customer/customer_screen.dart';
import '../../ui/history/history_screen.dart';
import '../ui/home/screen/home_screen.dart';
import '../ui/ledger/screen/ledger_screen_expenses.dart';
import '../../ui/profile/ProfileScreen.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
 
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    TabbarLedger(),
    TabbarHistory(),
    CustomerScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? Colors.blueAccent : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.monetization_on,
              color: _selectedIndex == 1 ? Colors.blueAccent : Colors.grey,
            ),
            label: 'Ledger',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              color: _selectedIndex == 2 ? Colors.blueAccent : Colors.grey,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              color: _selectedIndex == 3 ? Colors.blueAccent : Colors.grey,
            ),
            label: 'Customer',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: _selectedIndex == 4 ? Colors.blueAccent : Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
        onTap: _onItemTapped,
        selectedItemColor: Colors.blueAccent,
      ),
    );
  }
}