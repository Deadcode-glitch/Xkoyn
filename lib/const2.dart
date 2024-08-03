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
                          '15 /  ',
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
                          '150',
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
                          '+0.025 /  ',
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
                          '0.25',
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
                          '0.000010 / ',
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
                          '5',
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
                          '20 /  ',
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
                          '+0.035 /  ',
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
                          '0.35',
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
                          '0.000015 /',
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
                          '30 /  ',
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
                          '500',
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
                          '+0.045 /  ',
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
                          '0.45',
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
                          '0.000020 /  ',
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
                          '15',
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
                          '50 /  ',
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
                          '800',
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
                          '+0.055 /  ',
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
                          '0.55',
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
                          '0.000025 / ',
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
                          '20',
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
                          '100 /  ',
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
                          '1500',
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
                          '+0.060 /  ',
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
                          '0.60',
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
                          '0.000030 / ',
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
                          ' 25 ',
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
                          '250 /  ',
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
                          '2500',
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
                          '+0.070 /  ',
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
                          '0.70',
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
                          '0.000035 / ',
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
                          '30',
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
        ],
      ),
    );
  }
}
