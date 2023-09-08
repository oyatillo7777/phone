import 'package:flutter/material.dart';
import 'package:phone/ui/credit/credit.dart';
import 'package:phone/ui/hisob/hisob.dart';
import 'package:phone/ui/home/home_page.dart';
import 'package:phone/ui/profile/profile.dart';
import 'package:phone/ui/searcch/search.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  static const List _widgetOptions = [
    HomePage(),
    Search(),
    HisobPage(),
    CreditPage(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled, color: Colors.white), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.white), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet, color: Colors.white),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone_forwarded, color: Colors.white),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.white), label: ""),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.blue),
    );
  }
}
