import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {

  const BottomNav({ Key? key }) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'images/like_icon.png',
            width: 20,
            height: 20,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(

          icon: Image.asset(
            'images/chat.png',
            width: 20,
            height: 20,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'images/chat1.png',
            width: 20,
            height: 20,
          ),
          label: 'Home1',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'images/chat2.png',
            width: 20,
            height: 20,
          ),
          label: 'Home2',
        ),
         const BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
    );
  }
    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
