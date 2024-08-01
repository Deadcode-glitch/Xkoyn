import 'package:flutter/material.dart';

class Sketch extends StatefulWidget {
  const Sketch({Key? key}) : super(key: key);

  @override
  State<Sketch> createState() => _SketchState();
}

class _SketchState extends State<Sketch> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Low Upgrades'),
              Tab(text: 'High Upgrades'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            LowUpgradesPage(),
            HighUpgradesPage(),
          ],
        ),
      ),
    );
  }
}

class LowUpgradesPage extends StatelessWidget {
  const LowUpgradesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Low Upgrades Content'),
    );
  }
}

class HighUpgradesPage extends StatelessWidget {
  const HighUpgradesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('High Upgrades Content'),
    );
  }
}
