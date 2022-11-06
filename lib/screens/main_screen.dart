import 'package:flutter/material.dart';
import 'package:pjearthquake/screens/ShowAll_Eartquake.dart';
import 'package:pjearthquake/screens/home.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

int _currentIndex = 0;

final tabs = [
  HomeScreen(),
  ShowAll(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.location_on),
          label: 'Map'
      ),
      ],
      onTap: (index){
        setState(() {
          _currentIndex = index;
        });
      },
      ),
    );
  }
}