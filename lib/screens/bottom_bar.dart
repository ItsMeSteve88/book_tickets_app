import 'package:book_tickets_app/screens/profile_screen.dart';
import 'package:book_tickets_app/screens/search_screen.dart';
import 'package:book_tickets_app/screens/ticket_screen.dart';
import 'package:flutter/material.dart';
import 'package:book_tickets_app/screens/home_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
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
        child: _widgetOptions[_selectedIndex],
      ),

      //Nottom Nav Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 0,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),

        // Nav Bar icons

        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_home_regular,
            ),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_home_filled,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_search_regular,
            ),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_search_filled,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_ticket_regular,
            ),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_ticket_filled,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_person_regular,
            ),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_person_filled,
            ),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}
