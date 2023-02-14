import 'package:flutter/material.dart';
import 'package:hospital_app/profile.dart';
import './home.dart';
import './profile.dart';
<<<<<<< HEAD
import './splash.dart';
import './appointment.dart';
import 'package:device_preview/device_preview.dart';
=======
>>>>>>> af3cddcb6ce4ae02b4c68f0af11857786c3f0fc5

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
<<<<<<< HEAD
      debugShowCheckedModeBanner: false,
      home: WelcomeSplashScreen(),
=======
      home: const MyHomePage(title: 'hILTO'),
>>>>>>> af3cddcb6ce4ae02b4c68f0af11857786c3f0fc5
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<Widget> _screens = [
    Homepag(),
    profile(),
<<<<<<< HEAD
    Appointment()
  ];

=======
  ];

 

>>>>>>> af3cddcb6ce4ae02b4c68f0af11857786c3f0fc5
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF0E0255),
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: "Appointment",
            icon: Icon(Icons.medical_information_rounded),
          ),
        ],
        onTap: (i) {
          setState(() {
            _selectedIndex = i;
          });
        },
        currentIndex: _selectedIndex,
      ),
    );
  }
}
