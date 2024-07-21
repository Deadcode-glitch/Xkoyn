import 'package:flutter/material.dart';
import 'package:xcoin/home.dart';
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
    Upgrades(),
    Wallet(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BottomNavigationBar(
            onTap: (index) => {
              setState(() {
                myIndex = index;
              })
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
                  Icons.upgrade,
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
            selectedItemColor:
                Color.fromARGB(255, 255, 255, 255), // Set selected item color
            unselectedItemColor: Color.fromARGB(255, 166, 166, 166),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            backgroundColor: Colors.black,
            // Set unselected item color
          ),
        ),
      ),
      body: IndexedStack(
        children: widgetList,
        index: myIndex,
      ),
    );
  }
}
