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
                                          'Electro Pack',
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
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

                                        //USDT AND BUY ROW
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          Center(
                                                              child: Transform
                                                                  .translate(
                                                            offset:
                                                                const Offset(
                                                                    -4, 0),
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
                                                              child: Transform
                                                                  .translate(
                                                                      offset:
                                                                          const Offset(
                                                                              -4,
                                                                              0),
                                                                      child:
                                                                          const Text(
                                                                        '20',
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                            fontSize: 10),
                                                                      ))),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              //second

                                              Container(
                                                padding:
                                                    const EdgeInsets.all(4),
                                                decoration: BoxDecoration(
                                                    color: Colors.amber,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Row(
                                                  children: [
                                                    const Text(
                                                      'Buy - ',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 14, 13, 13),
                                                          fontSize: 10),
                                                    ),
                                                    const SizedBox(
                                                      width: 4,
                                                    ),
                                                    Center(
                                                        child:
                                                            Transform.translate(
                                                      offset:
                                                          const Offset(-4, 0),
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
                                                        child:
                                                            Transform.translate(
                                                                offset:
                                                                    const Offset(
                                                                        -4, 0),
                                                                child:
                                                                    const Text(
                                                                  '20',
                                                                  style: TextStyle(
                                                                      color: Color
                                                                          .fromARGB(
                                                                              255,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      fontSize:
                                                                          10),
                                                                ))),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        //END
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
                                          'Mystic Pack',
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
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
                                        //USDT AND BUY ROW
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          Center(
                                                              child: Transform
                                                                  .translate(
                                                            offset:
                                                                const Offset(
                                                                    -4, 0),
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
                                                              child: Transform
                                                                  .translate(
                                                                      offset:
                                                                          const Offset(
                                                                              -4,
                                                                              0),
                                                                      child:
                                                                          const Text(
                                                                        '20',
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                            fontSize: 10),
                                                                      ))),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              //second

                                              Container(
                                                padding:
                                                    const EdgeInsets.all(4),
                                                decoration: BoxDecoration(
                                                    color: Color(0xFFD2D2D2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Row(
                                                  children: [
                                                    const Text(
                                                      'Buy - ',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 14, 13, 13),
                                                          fontSize: 10),
                                                    ),
                                                    const SizedBox(
                                                      width: 4,
                                                    ),
                                                    Center(
                                                        child:
                                                            Transform.translate(
                                                      offset:
                                                          const Offset(-4, 0),
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
                                                        child:
                                                            Transform.translate(
                                                                offset:
                                                                    const Offset(
                                                                        -4, 0),
                                                                child:
                                                                    const Text(
                                                                  '20',
                                                                  style: TextStyle(
                                                                      color: Color
                                                                          .fromARGB(
                                                                              255,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      fontSize:
                                                                          10),
                                                                ))),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        //END
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
                                          'Solar Pack',
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
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
                                        //USDT AND BUY ROW
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          Center(
                                                              child: Transform
                                                                  .translate(
                                                            offset:
                                                                const Offset(
                                                                    -4, 0),
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
                                                              child: Transform
                                                                  .translate(
                                                                      offset:
                                                                          const Offset(
                                                                              -4,
                                                                              0),
                                                                      child:
                                                                          const Text(
                                                                        '20',
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                            fontSize: 10),
                                                                      ))),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              //second

                                              Container(
                                                padding:
                                                    const EdgeInsets.all(4),
                                                decoration: BoxDecoration(
                                                    color: Colors.amber,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Row(
                                                  children: [
                                                    const Text(
                                                      'Buy - ',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 14, 13, 13),
                                                          fontSize: 10),
                                                    ),
                                                    const SizedBox(
                                                      width: 4,
                                                    ),
                                                    Center(
                                                        child:
                                                            Transform.translate(
                                                      offset:
                                                          const Offset(-4, 0),
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
                                                        child:
                                                            Transform.translate(
                                                                offset:
                                                                    const Offset(
                                                                        -4, 0),
                                                                child:
                                                                    const Text(
                                                                  '20',
                                                                  style: TextStyle(
                                                                      color: Color
                                                                          .fromARGB(
                                                                              255,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      fontSize:
                                                                          10),
                                                                ))),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        //END
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
                                          'Luna Pack',
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
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
                                        //USDT AND BUY ROW
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          Center(
                                                              child: Transform
                                                                  .translate(
                                                            offset:
                                                                const Offset(
                                                                    -4, 0),
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
                                                              child: Transform
                                                                  .translate(
                                                                      offset:
                                                                          const Offset(
                                                                              -4,
                                                                              0),
                                                                      child:
                                                                          const Text(
                                                                        '20',
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                            fontSize: 10),
                                                                      ))),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              //second

                                              Container(
                                                padding:
                                                    const EdgeInsets.all(4),
                                                decoration: BoxDecoration(
                                                    color: Colors.amber,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Row(
                                                  children: [
                                                    const Text(
                                                      'Buy - ',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 14, 13, 13),
                                                          fontSize: 10),
                                                    ),
                                                    const SizedBox(
                                                      width: 4,
                                                    ),
                                                    Center(
                                                        child:
                                                            Transform.translate(
                                                      offset:
                                                          const Offset(-4, 0),
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
                                                        child:
                                                            Transform.translate(
                                                                offset:
                                                                    const Offset(
                                                                        -4, 0),
                                                                child:
                                                                    const Text(
                                                                  '20',
                                                                  style: TextStyle(
                                                                      color: Color
                                                                          .fromARGB(
                                                                              255,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      fontSize:
                                                                          10),
                                                                ))),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        //END
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
                                          'Aqua Pack',
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
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
                                        //USDT AND BUY ROW
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          Center(
                                                              child: Transform
                                                                  .translate(
                                                            offset:
                                                                const Offset(
                                                                    -4, 0),
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
                                                              child: Transform
                                                                  .translate(
                                                                      offset:
                                                                          const Offset(
                                                                              -4,
                                                                              0),
                                                                      child:
                                                                          const Text(
                                                                        '20',
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                            fontSize: 10),
                                                                      ))),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              //second

                                              Container(
                                                padding:
                                                    const EdgeInsets.all(4),
                                                decoration: BoxDecoration(
                                                    color: Colors.amber,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Row(
                                                  children: [
                                                    const Text(
                                                      'Buy - ',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 14, 13, 13),
                                                          fontSize: 10),
                                                    ),
                                                    const SizedBox(
                                                      width: 4,
                                                    ),
                                                    Center(
                                                        child:
                                                            Transform.translate(
                                                      offset:
                                                          const Offset(-4, 0),
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
                                                        child:
                                                            Transform.translate(
                                                                offset:
                                                                    const Offset(
                                                                        -4, 0),
                                                                child:
                                                                    const Text(
                                                                  '20',
                                                                  style: TextStyle(
                                                                      color: Color
                                                                          .fromARGB(
                                                                              255,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      fontSize:
                                                                          10),
                                                                ))),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        //END
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
                                          'Inferno Pack',
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
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
                                        //USDT AND BUY ROW
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          Center(
                                                              child: Transform
                                                                  .translate(
                                                            offset:
                                                                const Offset(
                                                                    -4, 0),
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
                                                              child: Transform
                                                                  .translate(
                                                                      offset:
                                                                          const Offset(
                                                                              -4,
                                                                              0),
                                                                      child:
                                                                          const Text(
                                                                        '20',
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                            fontSize: 10),
                                                                      ))),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              //second

                                              Container(
                                                padding:
                                                    const EdgeInsets.all(4),
                                                decoration: BoxDecoration(
                                                    color: Colors.amber,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Row(
                                                  children: [
                                                    const Text(
                                                      'Buy - ',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 14, 13, 13),
                                                          fontSize: 10),
                                                    ),
                                                    const SizedBox(
                                                      width: 4,
                                                    ),
                                                    Center(
                                                        child:
                                                            Transform.translate(
                                                      offset:
                                                          const Offset(-4, 0),
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
                                                        child:
                                                            Transform.translate(
                                                                offset:
                                                                    const Offset(
                                                                        -4, 0),
                                                                child:
                                                                    const Text(
                                                                  '20',
                                                                  style: TextStyle(
                                                                      color: Color
                                                                          .fromARGB(
                                                                              255,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      fontSize:
                                                                          10),
                                                                ))),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        //END
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
