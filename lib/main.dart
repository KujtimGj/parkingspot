import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking/account/userdetails.dart';
import 'package:parking/home/body.dart';
import 'package:parking/signup/signup.dart';
import 'package:parking/signup/verification.dart';
import 'package:parking/welcome/welcome.dart';

import 'account/account.dart';
import 'bookings/bookings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: "/home", page: () => const Home()),
        GetPage(name:"/signup",page:()=>const SignUp()),
        GetPage(name: "/verification", page: ()=>const Verification()),
        GetPage(name: "/userdetails", page: ()=> const UserDetails()),
      ],
      home: const Welcome(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
   final List<Widget> _widgetOptions = [
     const MapSample(),
    const Bookings(),
    const Account(),
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
        onTap: _onItemTapped,
        elevation: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.local_parking,
                  color: _selectedIndex == 0 ? Colors.green : Colors.grey),
              label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.timelapse,
                color: _selectedIndex == 1 ? Colors.green : Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle,
                  color: _selectedIndex == 2 ? Colors.green : Colors.grey),
              label: '')
        ],
      ),
    );
  }
}
