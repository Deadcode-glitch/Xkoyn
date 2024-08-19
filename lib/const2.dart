import 'package:flutter/material.dart';

class UpgradeModal extends StatelessWidget {
  final VoidCallback onContinue;

  UpgradeModal({required this.onContinue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
      decoration: const BoxDecoration(
          color: Color(0xFF232532),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'lib/images/xkoyn.png',
            width: 60,
            height: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Platinum Drill',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
                fontFamily: 'Montserrat SemiBold',
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    'Upgrade Period',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat Regular',
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: const [
                    Text(
                      '14 Days',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'Montserrat Regular',
                          fontSize: 12),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Color(0xFF191B2A),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'You receive',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat Regular',
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/usdt2.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '850 /  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/xkoyn.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '5,000',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Color(0xFF191B2A),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Profit per hour',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat Regular',
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/usdt2.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '+0.095 /  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/xkoyn.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '0.75',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Color(0xFF191B2A),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Profit per click',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat Regular',
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/usdt2.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '0.000110 / ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/xkoyn.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '85',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
              onContinue();
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding:
                  const EdgeInsets.only(top: 15, bottom: 15, right: 8, left: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFF7540F0),
              ),
              child: const Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 12,
                      fontFamily: 'Montserrat Medium',
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

class UpgradeModal2 extends StatelessWidget {
  final VoidCallback onContinue;

  UpgradeModal2({required this.onContinue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
      decoration: const BoxDecoration(
          color: Color(0xFF232532),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'lib/images/xkoyn.png',
            width: 60,
            height: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Laser Cutter',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
                fontFamily: 'Montserrat SemiBold',
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    'Upgrade Period',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat Regular',
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: const [
                    Text(
                      '14 Days',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'Montserrat Regular',
                          fontSize: 12),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Color(0xFF191B2A),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'You receive',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat Regular',
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/usdt2.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '1,000 /  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/xkoyn.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '7,500',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Color(0xFF191B2A),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Profit per hour',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat Regular',
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/usdt2.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '+0.115 /  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/xkoyn.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '2.5',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Color(0xFF191B2A),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Profit per click',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat Regular',
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/usdt2.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '0.000215 /',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/xkoyn.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '110',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
              onContinue();
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding:
                  const EdgeInsets.only(top: 15, bottom: 15, right: 8, left: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFF7540F0),
              ),
              child: const Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 12,
                      fontFamily: 'Montserrat Medium',
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

class UpgradeModal3 extends StatelessWidget {
  final VoidCallback onContinue;

  UpgradeModal3({required this.onContinue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
      decoration: const BoxDecoration(
          color: Color(0xFF232532),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'lib/images/xkoyn.png',
            width: 60,
            height: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Fusion Cell',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
                fontFamily: 'Montserrat SemiBold',
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    'Upgrade Period',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat Regular',
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: const [
                    Text(
                      '14 Days',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'Montserrat Regular',
                          fontSize: 12),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Color(0xFF191B2A),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'You receive',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat Regular',
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/usdt2.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '1,500 /  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/xkoyn.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '10,000',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Color(0xFF191B2A),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Profit per hour',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontFamily: 'Montserrat Regular',
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/usdt2.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '+1.5 /  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/xkoyn.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '10',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Color(0xFF191B2A),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Profit per click',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontFamily: 'Montserrat Regular',
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/usdt2.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '0.000290 /  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/xkoyn.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '200',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
              onContinue();
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding:
                  const EdgeInsets.only(top: 15, bottom: 15, right: 8, left: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFF7540F0),
              ),
              child: const Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 12,
                      fontFamily: 'Montserrat Medium',
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

class UpgradeModal4 extends StatelessWidget {
  final VoidCallback onContinue;

  UpgradeModal4({required this.onContinue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
      decoration: const BoxDecoration(
          color: Color(0xFF232532),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'lib/images/xkoyn.png',
            width: 60,
            height: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Power Suit',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
                fontFamily: 'Montserrat SemiBold',
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    'Upgrade Period',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat Regular',
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: const [
                    Text(
                      '14 Days',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'Montserrat Regular',
                          fontSize: 12),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Color(0xFF191B2A),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'You receive',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat Regular',
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/usdt2.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '2,000 /  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/xkoyn.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '13,500',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Color(0xFF191B2A),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Profit per hour',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontFamily: 'Montserrat Regular',
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/usdt2.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '+2.5 /  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/xkoyn.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '40',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Color(0xFF191B2A),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Profit per click',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontFamily: 'Montserrat Regular',
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/usdt2.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '0.000325 / ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/xkoyn.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '300',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
              onContinue();
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding:
                  const EdgeInsets.only(top: 15, bottom: 15, right: 8, left: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFF7540F0),
              ),
              child: const Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 12,
                      fontFamily: 'Montserrat Medium',
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

class UpgradeModal5 extends StatelessWidget {
  final VoidCallback onContinue;

  UpgradeModal5({required this.onContinue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
      decoration: const BoxDecoration(
          color: Color(0xFF232532),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'lib/images/xkoyn.png',
            width: 60,
            height: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Ultra Tools',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
                fontFamily: 'Montserrat SemiBold',
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    'Upgrade Period',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat Regular',
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: const [
                    Text(
                      '14 Days',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'Montserrat Regular',
                          fontSize: 12),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Color(0xFF19132A),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'You receive',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat Regular',
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/usdt2.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '3,000 /  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/xkoyn.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '17,500',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Color(0xFF191B2A),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Profit per hour',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontFamily: 'Montserrat Regular',
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/usdt2.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '+5.5 /  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/xkoyn.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '100',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Color(0xFF19132A),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Profit per click',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontFamily: 'Montserrat Regular',
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/usdt2.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '0.000450 / ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/xkoyn.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          ' 500',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
              onContinue();
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding:
                  const EdgeInsets.only(top: 15, bottom: 15, right: 8, left: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFF7540F0),
              ),
              child: const Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 12,
                      fontFamily: 'Montserrat Medium',
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

class UpgradeModal6 extends StatelessWidget {
  final VoidCallback onContinue;

  UpgradeModal6({required this.onContinue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
      decoration: const BoxDecoration(
          color: Color(0xFF232532),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'lib/images/xkoyn.png',
            width: 60,
            height: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Hyper Miner',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
                fontFamily: 'Montserrat SemiBold',
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    'Upgrade Period',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat Regular',
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: const [
                    Text(
                      '14 Days',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'Montserrat Regular',
                          fontSize: 12),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Color(0xFF191B2A),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'You receive',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontFamily: 'Montserrat Regular',
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/usdt2.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '5,000 /  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/xkoyn.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '25,000',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Color(0xFF191B2A),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Profit per hour',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontFamily: 'Montserrat Regular',
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/usdt2.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '+15 /  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/xkoyn.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '200',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Color(0xFF191B2A),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Profit per click',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 228, 228),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat Regular',
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/usdt2.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '0.001500 / ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/xkoyn.png',
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '950',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
              onContinue();
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding:
                  const EdgeInsets.only(top: 15, bottom: 15, right: 8, left: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFF7540F0),
              ),
              child: const Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 12,
                      fontFamily: 'Montserrat Medium',
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
