import 'package:flutter/material.dart';
import 'dart:ui';

class Upgrades extends StatefulWidget {
  const Upgrades({Key? key}) : super(key: key);

  @override
  State<Upgrades> createState() => _UpgradesState();
}

class _UpgradesState extends State<Upgrades> with TickerProviderStateMixin {
  late AnimationController _slideController;
  late Animation<Offset> _offsetAnimation;
  late AnimationController _rotationController;
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _slideController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _slideController,
      curve: Curves.easeInOut,
    ));

    _rotationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);

    _scaleAnimation = Tween<double>(begin: 0.4, end: 0.6).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _slideController.dispose();
    _rotationController.dispose();
    super.dispose();
  }

  void _oopsDialog() {
    Future.delayed(Duration.zero, () {
      _slideController.forward();
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return SlideTransition(
            position: _offsetAnimation,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 174, 174, 174),
                    width: 1.0,
                  ),
                ),
                backgroundColor: Color(0xFFFAFAFA),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(255, 255, 69, 69)
                              .withOpacity(0.2), // Adjust opacity here
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              '!',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 8, 8),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Oops',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Bonus balance is locked. Perform any transaction between 5-10 USDT to unlock and withdraw your bonus',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 80, 80, 80),
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                              child: const Text(
                                'Continue',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ).then((_) => _slideController.reset());
    });
  }

  void _showLoadingDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Stack(
          children: [
            // Blurred background
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            // Loading animation
            Center(
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _scaleAnimation.value,
                    child: child,
                  );
                },
                child: Image.asset(
                  'lib/images/xkoyn.png',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          ],
        );
      },
    );

    // Close the loading dialog after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pop();
      _oopsDialog();
    });
  }

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
                            child: GestureDetector(
                              onTap: () {
                                _showLoadingDialog();
                              },
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
                                              bottomRight:
                                                  Radius.circular(20))),
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
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
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
                                                      offset:
                                                          const Offset(-4, 0),
                                                      child: const Text(
                                                        '200',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
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
                                          const SizedBox(
                                            height: 6,
                                          ),

                                          //USDT AND BUY ROW
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                              child:
                                                                  Image.asset(
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
                                                                        offset: const Offset(
                                                                            -4,
                                                                            0),
                                                                        child:
                                                                            const Text(
                                                                          '20',
                                                                          style: TextStyle(
                                                                              color: Color.fromARGB(255, 0, 0, 0),
                                                                              fontWeight: FontWeight.w300,
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
                                                      color: Color.fromARGB(
                                                          255, 217, 217, 217),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Row(
                                                    children: [
                                                      const Text(
                                                        'Buy - ',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    14,
                                                                    13,
                                                                    13),
                                                            fontSize: 10),
                                                      ),
                                                      const SizedBox(
                                                        width: 4,
                                                      ),
                                                      Center(
                                                          child: Transform
                                                              .translate(
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
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                _showLoadingDialog();
                              },
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
                                              bottomRight:
                                                  Radius.circular(20))),
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
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
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
                                                      offset:
                                                          const Offset(-4, 0),
                                                      child: const Text(
                                                        '200',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
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
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          //USDT AND BUY ROW
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                              child:
                                                                  Image.asset(
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
                                                                        offset: const Offset(
                                                                            -4,
                                                                            0),
                                                                        child:
                                                                            const Text(
                                                                          '20',
                                                                          style: TextStyle(
                                                                              color: Color.fromARGB(255, 0, 0, 0),
                                                                              fontWeight: FontWeight.w300,
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
                                                      color: Color.fromARGB(
                                                          255, 217, 217, 217),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Row(
                                                    children: [
                                                      const Text(
                                                        'Buy - ',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    14,
                                                                    13,
                                                                    13),
                                                            fontSize: 10),
                                                      ),
                                                      const SizedBox(
                                                        width: 4,
                                                      ),
                                                      Center(
                                                          child: Transform
                                                              .translate(
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
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                _showLoadingDialog();
                              },
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
                                              bottomRight:
                                                  Radius.circular(20))),
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
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
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
                                                      offset:
                                                          const Offset(-4, 0),
                                                      child: const Text(
                                                        '200',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
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
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          //USDT AND BUY ROW
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                              child:
                                                                  Image.asset(
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
                                                                        offset: const Offset(
                                                                            -4,
                                                                            0),
                                                                        child:
                                                                            const Text(
                                                                          '20',
                                                                          style: TextStyle(
                                                                              color: Color.fromARGB(255, 0, 0, 0),
                                                                              fontWeight: FontWeight.w300,
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
                                                      color: Color.fromARGB(
                                                          255, 217, 217, 217),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Row(
                                                    children: [
                                                      const Text(
                                                        'Buy - ',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    14,
                                                                    13,
                                                                    13),
                                                            fontSize: 10),
                                                      ),
                                                      const SizedBox(
                                                        width: 4,
                                                      ),
                                                      Center(
                                                          child: Transform
                                                              .translate(
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
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                _showLoadingDialog();
                              },
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
                                              bottomRight:
                                                  Radius.circular(20))),
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
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
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
                                                      offset:
                                                          const Offset(-4, 0),
                                                      child: const Text(
                                                        '200',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
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
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          //USDT AND BUY ROW
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                              child:
                                                                  Image.asset(
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
                                                                        offset: const Offset(
                                                                            -4,
                                                                            0),
                                                                        child:
                                                                            const Text(
                                                                          '20',
                                                                          style: TextStyle(
                                                                              color: Color.fromARGB(255, 0, 0, 0),
                                                                              fontWeight: FontWeight.w300,
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
                                                      color: Color.fromARGB(
                                                          255, 217, 217, 217),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Row(
                                                    children: [
                                                      const Text(
                                                        'Buy - ',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    14,
                                                                    13,
                                                                    13),
                                                            fontSize: 10),
                                                      ),
                                                      const SizedBox(
                                                        width: 4,
                                                      ),
                                                      Center(
                                                          child: Transform
                                                              .translate(
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
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                _showLoadingDialog();
                              },
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
                                              bottomRight:
                                                  Radius.circular(20))),
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
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
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
                                                      offset:
                                                          const Offset(-4, 0),
                                                      child: const Text(
                                                        '200',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
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
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          //USDT AND BUY ROW
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                              child:
                                                                  Image.asset(
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
                                                                        offset: const Offset(
                                                                            -4,
                                                                            0),
                                                                        child:
                                                                            const Text(
                                                                          '20',
                                                                          style: TextStyle(
                                                                              color: Color.fromARGB(255, 0, 0, 0),
                                                                              fontWeight: FontWeight.w300,
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
                                                      color: Color.fromARGB(
                                                          255, 217, 217, 217),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Row(
                                                    children: [
                                                      const Text(
                                                        'Buy - ',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    14,
                                                                    13,
                                                                    13),
                                                            fontSize: 10),
                                                      ),
                                                      const SizedBox(
                                                        width: 4,
                                                      ),
                                                      Center(
                                                          child: Transform
                                                              .translate(
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
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                _showLoadingDialog();
                              },
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
                                              bottomRight:
                                                  Radius.circular(20))),
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
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
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
                                                      offset:
                                                          const Offset(-4, 0),
                                                      child: const Text(
                                                        '200',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
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
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          //USDT AND BUY ROW
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                              child:
                                                                  Image.asset(
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
                                                                        offset: const Offset(
                                                                            -4,
                                                                            0),
                                                                        child:
                                                                            const Text(
                                                                          '20',
                                                                          style: TextStyle(
                                                                              color: Color.fromARGB(255, 0, 0, 0),
                                                                              fontWeight: FontWeight.w300,
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
                                                      color: Color.fromARGB(
                                                          255, 217, 217, 217),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Row(
                                                    children: [
                                                      const Text(
                                                        'Buy - ',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    14,
                                                                    13,
                                                                    13),
                                                            fontSize: 10),
                                                      ),
                                                      const SizedBox(
                                                        width: 4,
                                                      ),
                                                      Center(
                                                          child: Transform
                                                              .translate(
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
