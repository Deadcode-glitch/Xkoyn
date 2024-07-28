import 'package:flutter/material.dart';

class UpgradeModal extends StatelessWidget {
  final VoidCallback onContinue;

  UpgradeModal({required this.onContinue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20)),
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
            'Electro Pack',
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 24,
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                  children: const [
                    Text(
                      '14 Days',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 12),
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
              color: Color.fromARGB(255, 234, 234, 234),
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                          '15 /  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
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
                              color: Color.fromARGB(255, 0, 0, 0),
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
              color: Color.fromARGB(255, 234, 234, 234),
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                          '+0.025 /  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
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
                              color: Color.fromARGB(255, 0, 0, 0),
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
              color: Color.fromARGB(255, 234, 234, 234),
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                          '0.000010 / ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
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
                          '0.000150  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
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
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              child: const Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 12,
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
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20)),
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
            'Mystic Pack',
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 24,
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                  children: const [
                    Text(
                      '14 Days',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 12),
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
              color: Color.fromARGB(255, 234, 234, 234),
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                          '20 /  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
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
                              color: Color.fromARGB(255, 0, 0, 0),
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
              color: Color.fromARGB(255, 234, 234, 234),
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                          '+0.035 /  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
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
                              color: Color.fromARGB(255, 0, 0, 0),
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
              color: Color.fromARGB(255, 234, 234, 234),
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                          '0.000015 /',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
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
                          ' 0.000200  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
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
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              child: const Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 12,
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
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20)),
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
            'Solar Pack',
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 24,
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                  children: const [
                    Text(
                      '14 Days',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 12),
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
              color: Color.fromARGB(255, 234, 234, 234),
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                          '30 /  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
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
                              color: Color.fromARGB(255, 0, 0, 0),
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
              color: Color.fromARGB(255, 234, 234, 234),
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                              color: Color.fromARGB(255, 0, 0, 0),
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
                              color: Color.fromARGB(255, 0, 0, 0),
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
              color: Color.fromARGB(255, 234, 234, 234),
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                              color: Color.fromARGB(255, 0, 0, 0),
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
                          '0.000250 ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
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
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              child: const Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 12,
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
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20)),
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
            'Luna Pack',
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 24,
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                  children: const [
                    Text(
                      '14 Days',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 12),
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
              color: Color.fromARGB(255, 234, 234, 234),
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                          '50 /  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
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
                              color: Color.fromARGB(255, 0, 0, 0),
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
              color: Color.fromARGB(255, 234, 234, 234),
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                              color: Color.fromARGB(255, 0, 0, 0),
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
                              color: Color.fromARGB(255, 0, 0, 0),
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
              color: Color.fromARGB(255, 234, 234, 234),
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                              color: Color.fromARGB(255, 0, 0, 0),
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
                          ' 0.000300 ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
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
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              child: const Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 12,
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
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20)),
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
            'Aqua Pack',
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 24,
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                  children: const [
                    Text(
                      '14 Days',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 12),
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
              color: Color.fromARGB(255, 234, 234, 234),
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                          '100 /  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
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
                              color: Color.fromARGB(255, 0, 0, 0),
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
              color: Color.fromARGB(255, 234, 234, 234),
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                              color: Color.fromARGB(255, 0, 0, 0),
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
                              color: Color.fromARGB(255, 0, 0, 0),
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
              color: Color.fromARGB(255, 234, 234, 234),
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                              color: Color.fromARGB(255, 0, 0, 0),
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
                          ' 0.000350 ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
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
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              child: const Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 12,
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
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20)),
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
            'Inferno Pack',
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 24,
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                  children: const [
                    Text(
                      '14 Days',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 12),
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
              color: Color.fromARGB(255, 234, 234, 234),
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                              color: Color.fromARGB(255, 0, 0, 0),
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
                              color: Color.fromARGB(255, 0, 0, 0),
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
              color: Color.fromARGB(255, 234, 234, 234),
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                              color: Color.fromARGB(255, 0, 0, 0),
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
                              color: Color.fromARGB(255, 0, 0, 0),
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
              color: Color.fromARGB(255, 234, 234, 234),
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
                        color: Color.fromARGB(255, 165, 165, 165),
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
                          '0.000035 / ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
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
                          '0.000400  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
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
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              child: const Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 12,
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
