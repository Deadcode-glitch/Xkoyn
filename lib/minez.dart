import 'package:flutter/material.dart';
import 'package:xcoin/upgrades.dart';
import 'package:xcoin/upgrades2.dart';

class Minez extends StatefulWidget {
  const Minez({Key? key}) : super(key: key);

  @override
  State<Minez> createState() => _MinezState();
}

class _MinezState extends State<Minez> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFF0E101F),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 40, bottom: 20, left: 25, right: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Upgrades',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat Bold',
                        fontSize: 22),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFF191B2A),
                    borderRadius: BorderRadius.circular(20)),
                child: TabBar(
                    indicator: BoxDecoration(
                        color: Color(0xFF232532),
                        borderRadius: BorderRadius.circular(20)),
                    indicatorColor: Colors.transparent,
                    labelStyle: const TextStyle(
                        fontSize: 12, fontFamily: 'Montserrat Regular'),
                    tabs: const [
                      Tab(
                        text: 'Basic',
                      ),
                      Tab(
                        text: 'Advance',
                      )
                    ]),
              ),
              const Expanded(
                  child: TabBarView(
                children: [Upgrades(), Upgrades2()],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
