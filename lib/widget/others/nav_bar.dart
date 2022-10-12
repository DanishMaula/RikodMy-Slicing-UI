import 'package:flutter/material.dart';
import 'package:rikodmy/ui/history/tabbar_history.dart';
import 'package:rikodmy/ui/ledger/tabbar_ledger.dart';
import 'package:rikodmy/utils/utils.dart';

import '../../ui/customer/screen/customer_screen.dart';
import '../../ui/home/screen/home_screen.dart';
import '../../ui/ledger/screen/ledger_screen_expenses.dart';
import '../../ui/profile/screen/ProfileScreen.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key, }) : super(key: key);

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
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.monetization_on,
            ),
            label: 'Ledger',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people_alt,
            ),
            label: 'Customer',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xff2360AD),
        unselectedItemColor: const Color(0xff828282),
        selectedLabelStyle: selectedLabelStyle,
        unselectedLabelStyle: unselectedLabelStyle,
        
      ),
    );
  }
}