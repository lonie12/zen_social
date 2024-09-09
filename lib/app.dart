import 'package:flutter/material.dart';
import 'package:social_app/helpers/colors.dart';
import 'package:social_app/helpers/constants.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var _currentIndex = 0;

  @override
  initState() {
    super.initState();
  }

  void _onItemTaped(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(context) {
    var item = navPages[_currentIndex];
    return Scaffold(
      body: item,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFF9F9F9),
        items: bottomItems,
        currentIndex: _currentIndex,
        onTap: _onItemTaped,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        selectedItemColor: secondaryColor,
      ),
    );
  }
}

BottomNavigationBarItem bottomItem({
  required String label,
  required IconData icon,
  required IconData activeIcon,
}) {
  return BottomNavigationBarItem(
    icon: Icon(icon),
    activeIcon: Icon(activeIcon),
    label: label,
  );
}
