import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:xcoin/home.dart';
import 'package:xcoin/minez.dart';
import 'package:xcoin/upgrades.dart';
import 'package:xcoin/wallet.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final String message = '';
  int myIndex = 0;
  List<Widget> widgetList = const [
    Home(),
    Minez(),
    Wallet(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E101F),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          /* Image.asset(
            'lib/images/wallpaper.png', // Replace with your image path
            fit: BoxFit.cover,
          ),
          // Transparent overlay with blur
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              color: Color.fromARGB(255, 255, 224, 147)
                  .withOpacity(0.7), // Adjust the opacity as needed
            ),
          ),
          // Main content
          */
          Column(
            children: [
              Expanded(
                child: IndexedStack(
                  index: myIndex,
                  children: widgetList,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: BottomNavigationBar(
                    onTap: (index) {
                      setState(() {
                        myIndex = index;
                      });
                    },
                    currentIndex: myIndex,
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.home,
                          size: 18,
                        ),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.handyman,
                          size: 20,
                        ),
                        label: 'Upgrades',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.wallet,
                          size: 20,
                        ),
                        label: 'Wallet',
                      ),
                    ],
                    selectedFontSize: 11,
                    unselectedFontSize: 10,
                    selectedItemColor: Colors.white, // Set selected item color
                    unselectedItemColor: Color.fromARGB(255, 166, 166, 166),
                    showSelectedLabels: true,
                    showUnselectedLabels: true,
                    backgroundColor: Color(0xFF232532), // Set background color
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
