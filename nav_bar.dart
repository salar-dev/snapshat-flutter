import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  final List<Widget> _screens = [
    Scaffold(body: Center(child: Text('Screen 1'),),),
    Scaffold(body: Center(child: Text('Screen 2'),),),
    Scaffold(body: Center(child: Text('Screen 3'),),),
    Scaffold(body: Center(child: Text('Screen 4'),),),
    Scaffold(body: Center(child: Text('Screen 5'),),),
  ];

  final Map<String, IconData> _icons = const{
    'Map' : Icons.location_on,
    'Message' : Icons.messenger_outline,
    'Camera' : Icons.camera_alt_outlined,
    'People' : Icons.people,
    'Menu' : Icons.menu,
  };

  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items:
          _icons.map((title, icon) => MapEntry(
            title, BottomNavigationBarItem(
            icon: Icon(icon, size: 25,),
            label: title,
          )
          )).values.toList(),
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: _currentIndex == 0 ? Colors.green
        : _currentIndex == 1 ? Colors.blue
        : _currentIndex == 2 ? Colors.yellow
        : _currentIndex == 3 ? Colors.purple
        : Colors.yellow,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
