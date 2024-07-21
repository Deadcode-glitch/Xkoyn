import 'package:flutter/material.dart';

class Upgrades extends StatefulWidget {
  const Upgrades({Key? key}) : super(key: key);

  @override
  State<Upgrades> createState() => _UpgradesState();
}

class _UpgradesState extends State<Upgrades> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 25,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFFFAFAFA)),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color.fromARGB(255, 0, 0, 0),
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Upgrades',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.w700,
                            fontSize: 22),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFFAFAFA),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      'lib/images/xkoyn.png',
                                      width: 60,
                                      height: 60,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFF0F0F0),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        const Text(
                                          'Regular Vortex',
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Row(
                                          children: [
                                            Center(
                                                child: Transform.translate(
                                              offset: const Offset(-4, 0),
                                              child: Image.asset(
                                                'lib/images/xkoyn.png',
                                                width: 12,
                                                height: 12,
                                              ),
                                            )),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Center(
                                                child: Transform.translate(
                                                    offset: const Offset(-4, 0),
                                                    child: const Text(
                                                      '200',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 0, 0, 0),
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontSize: 10),
                                                    ))),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          children: [
                                            Center(
                                                child: Transform.translate(
                                              offset: const Offset(-4, 0),
                                              child: Image.asset(
                                                'lib/images/usdt2.png',
                                                width: 12,
                                                height: 12,
                                              ),
                                            )),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Center(
                                                child: Transform.translate(
                                                    offset: const Offset(-4, 0),
                                                    child: const Text(
                                                      '20',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 0, 0, 0),
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontSize: 10),
                                                    ))),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              height: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFFAFAFA),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      'lib/images/xkoyn.png',
                                      width: 60,
                                      height: 60,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFF0F0F0),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        const Text(
                                          'Mega Vortex',
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        const Text(
                                          'x6 tokens every hour',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 74, 74, 74),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 10),
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          children: [
                                            Center(
                                                child: Transform.translate(
                                              offset: const Offset(-4, 0),
                                              child: Image.asset(
                                                'lib/images/usdt2.png',
                                                width: 12,
                                                height: 12,
                                              ),
                                            )),
                                            Center(
                                                child: Transform.translate(
                                                    offset: const Offset(-4, 0),
                                                    child: const Text(
                                                      '100',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 0, 0, 0),
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontSize: 10),
                                                    ))),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFFAFAFA),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      'lib/images/xkoyn.png',
                                      width: 60,
                                      height: 60,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFF0F0F0),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        const Text(
                                          'Ultra Vortex',
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        const Text(
                                          'x9 tokens every hour',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 74, 74, 74),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 10),
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          children: [
                                            Center(
                                                child: Transform.translate(
                                              offset: const Offset(-4, 0),
                                              child: Image.asset(
                                                'lib/images/usdt2.png',
                                                width: 12,
                                                height: 12,
                                              ),
                                            )),
                                            Center(
                                                child: Transform.translate(
                                                    offset: const Offset(-4, 0),
                                                    child: const Text(
                                                      '100',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 0, 0, 0),
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontSize: 10),
                                                    ))),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              height: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFFAFAFA),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      'lib/images/xkoyn.png',
                                      width: 60,
                                      height: 60,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFF0F0F0),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        const Text(
                                          'Hyper Vortex',
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        const Text(
                                          'x12 tokens every hour',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 74, 74, 74),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 10),
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          children: [
                                            Center(
                                                child: Transform.translate(
                                              offset: const Offset(-4, 0),
                                              child: Image.asset(
                                                'lib/images/usdt2.png',
                                                width: 12,
                                                height: 12,
                                              ),
                                            )),
                                            Center(
                                                child: Transform.translate(
                                                    offset: const Offset(-4, 0),
                                                    child: const Text(
                                                      '100',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 0, 0, 0),
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontSize: 10),
                                                    ))),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFFAFAFA),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      'lib/images/xkoyn.png',
                                      width: 60,
                                      height: 60,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFF0F0F0),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        const Text(
                                          'Thunder Vortex',
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        const Text(
                                          'x15 tokens every hour',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 74, 74, 74),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 10),
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          children: [
                                            Center(
                                                child: Transform.translate(
                                              offset: const Offset(-4, 0),
                                              child: Image.asset(
                                                'lib/images/usdt2.png',
                                                width: 12,
                                                height: 12,
                                              ),
                                            )),
                                            Center(
                                                child: Transform.translate(
                                                    offset: const Offset(-4, 0),
                                                    child: const Text(
                                                      '100',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 0, 0, 0),
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontSize: 10),
                                                    ))),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              height: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFFAFAFA),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      'lib/images/xkoyn.png',
                                      width: 60,
                                      height: 60,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFF0F0F0),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        const Text(
                                          'Turbo Vortex',
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        const Text(
                                          'x20 tokens every hour',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 74, 74, 74),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 10),
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          children: [
                                            Center(
                                                child: Transform.translate(
                                              offset: const Offset(-4, 0),
                                              child: Image.asset(
                                                'lib/images/usdt2.png',
                                                width: 12,
                                                height: 12,
                                              ),
                                            )),
                                            Center(
                                                child: Transform.translate(
                                                    offset: const Offset(-4, 0),
                                                    child: const Text(
                                                      '100',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 0, 0, 0),
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontSize: 10),
                                                    ))),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
