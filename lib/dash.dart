import 'package:xcoin/home.dart';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:xcoin/minez.dart';
import 'package:xcoin/wallet.dart';

class Dashboard2 extends StatefulWidget {
  const Dashboard2({Key? key}) : super(key: key);

  @override
  State<Dashboard2> createState() => _Dashboard2State();
}

class _Dashboard2State extends State<Dashboard2> {
  final String message = '';
  int myIndex = 0;
  List<Widget> widgetList = const [Home(), Minez(), Wallet()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E101F),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        child: GNav(
            backgroundColor: Color(0xFF0E101F),
            tabBackgroundColor: Color(0xFF232532),
            padding: EdgeInsets.all(16),
            textSize: 10,
            color: Colors.white,
            iconSize: 18,
            activeColor: Colors.white,
            gap: 5,
            textStyle: TextStyle(fontWeight: FontWeight.w300),
            onTabChange: (index) {
              setState(() {
                myIndex = index;
              });
            },
            tabs: const [
              GButton(
                icon: Icons.home_rounded,
                text: 'Home',
                textStyle: TextStyle(fontSize: 12, color: Colors.white),
              ),
              GButton(
                icon: Icons.handyman,
                text: 'Upgrades',
                textStyle: TextStyle(fontSize: 12, color: Colors.white),
              ),
              GButton(
                icon: Icons.wallet,
                text: 'Wallet',
                textStyle: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ]),
      ),
      body: IndexedStack(
        children: widgetList,
        index: myIndex,
      ),
    );
  }
}
