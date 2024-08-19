import 'package:flutter/material.dart';
import 'dart:ui';
import 'const2.dart';
import 'package:xcoin/profs.dart';

class Upgrades2 extends StatefulWidget {
  const Upgrades2({Key? key}) : super(key: key);

  @override
  State<Upgrades2> createState() => _Upgrades2State();
}

class _Upgrades2State extends State<Upgrades2> with TickerProviderStateMixin {
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
    _controller.dispose();

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
                    color: Color(0xFF232532),
                    width: 1.0,
                  ),
                ),
                backgroundColor: Color(0xFF191B2A),
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
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 14,
                          fontFamily: 'Montserrat SemiBold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'You do not have sufficient balance to purchase this pack',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 201, 201, 201),
                          fontSize: 10,
                          fontFamily: 'Montserrat Regular',
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
                                'Close',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Montserrat SemiBold',
                                  color: Color(0xFF7540F0),
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

  void _showModal() {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (context) {
          return UpgradeModal(
            onContinue: () {
              // Your function to be called when the Continue button is pressed
              _showLoadingDialog();
              // You can call your actual function here
            },
          );
        });
  }

  void _showMystic() {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (context) {
          return UpgradeModal2(
            onContinue: () {
              // Your function to be called when the Continue button is pressed
              _showLoadingDialog();
              // You can call your actual function here
            },
          );
        });
  }

  void _showSolar() {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (context) {
          return UpgradeModal3(
            onContinue: () {
              // Your function to be called when the Continue button is pressed
              _showLoadingDialog();
              // You can call your actual function here
            },
          );
        });
  }

  void _showLuna() {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (context) {
          return UpgradeModal4(
            onContinue: () {
              // Your function to be called when the Continue button is pressed
              _showLoadingDialog();
              // You can call your actual function here
            },
          );
        });
  }

  void _showAqua() {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (context) {
          return UpgradeModal5(
            onContinue: () {
              // Your function to be called when the Continue button is pressed
              _showLoadingDialog();
              // You can call your actual function here
            },
          );
        });
  }

  void _showInferno() {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (context) {
          return UpgradeModal6(
            onContinue: () {
              // Your function to be called when the Continue button is pressed
              _showLoadingDialog();
              // You can call your actual function here
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E101F),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 0, top: 20, right: 0),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [],
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
                                _showModal();
                              },
                              child: Container(
                                height: 170,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xFF232532),
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
                                          color: Color(0xFF191B2A),
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
                                            'Platinum Drill',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Montserrat Medium',
                                                fontSize: 12),
                                          ),
                                          const SizedBox(
                                            height: 4,
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
                                                        '5,000',
                                                        style: TextStyle(
                                                            color: Color
                                                                .fromARGB(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    255),
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            fontFamily:
                                                                'Montserrat Regular',
                                                            fontSize: 10),
                                                      ))),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 2,
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
                                                                          '850',
                                                                          style: TextStyle(
                                                                              color: Color.fromARGB(255, 255, 255, 255),
                                                                              fontWeight: FontWeight.w300,
                                                                              fontFamily: 'Montserrat Regular',
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
                                                      color: Color(0xFF232532),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Row(
                                                    children: [
                                                      const Text(
                                                        'Buy - ',
                                                        style: TextStyle(
                                                            color:
                                                                Color
                                                                    .fromARGB(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        255),
                                                            fontFamily:
                                                                'Montserrat Regular',
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
                                                                    '500',
                                                                    style: TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w300,
                                                                        fontFamily:
                                                                            'Montserrat Regular',
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
                                _showMystic();
                              },
                              child: Container(
                                height: 170,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xFF232532),
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
                                          color: Color(0xFF191B2A),
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
                                            'Laser Cutter',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontWeight: FontWeight.w600,
                                                fontFamily:
                                                    'Montserrat SemiBold',
                                                fontSize: 12),
                                          ),
                                          const SizedBox(
                                            height: 4,
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
                                                        '7,500',
                                                        style: TextStyle(
                                                            color: Color
                                                                .fromARGB(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    255),
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            fontFamily:
                                                                'Montserrat Regular',
                                                            fontSize: 10),
                                                      ))),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 2,
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
                                                                          '1,000',
                                                                          style: TextStyle(
                                                                              color: Color.fromARGB(255, 255, 255, 255),
                                                                              fontWeight: FontWeight.w300,
                                                                              fontFamily: 'Montserrat Regular',
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
                                                      color: Color(0xFF232532),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Row(
                                                    children: [
                                                      const Text(
                                                        'Buy - ',
                                                        style: TextStyle(
                                                            color:
                                                                Color
                                                                    .fromARGB(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        255),
                                                            fontFamily:
                                                                'Montserrat Regular',
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
                                                                    '700',
                                                                    style: TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                        fontFamily:
                                                                            'Montserrat Regular',
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
                                _showSolar();
                              },
                              child: Container(
                                height: 170,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xFF232532),
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
                                          color: Color(0xFF191B2A),
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
                                            'Fusion Cell',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontWeight: FontWeight.w600,
                                                fontFamily:
                                                    'Montserrat SemiBold',
                                                fontSize: 12),
                                          ),
                                          const SizedBox(
                                            height: 4,
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
                                                        '10,000',
                                                        style: TextStyle(
                                                            color: Color
                                                                .fromARGB(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    255),
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            fontFamily:
                                                                'Montserrat Regular',
                                                            fontSize: 10),
                                                      ))),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 2,
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
                                                                          '1,500',
                                                                          style: TextStyle(
                                                                              color: Color.fromARGB(255, 255, 255, 255),
                                                                              fontWeight: FontWeight.w300,
                                                                              fontFamily: 'Montserrat Regular',
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
                                                      color: Color(0xFF232532),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Row(
                                                    children: [
                                                      const Text(
                                                        'Buy - ',
                                                        style: TextStyle(
                                                            color:
                                                                Color
                                                                    .fromARGB(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        255),
                                                            fontFamily:
                                                                'Montserrat Regular',
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
                                                                    '900',
                                                                    style: TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                        fontFamily:
                                                                            'Montserrat Regular',
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
                                _showLuna();
                              },
                              child: Container(
                                height: 170,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xFF232532),
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
                                          color: Color(0xFF191B2A),
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
                                            'Power Suit',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontWeight: FontWeight.w600,
                                                fontFamily:
                                                    'Montserrat SemiBold',
                                                fontSize: 12),
                                          ),
                                          const SizedBox(
                                            height: 4,
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
                                                        '13,500',
                                                        style: TextStyle(
                                                            color: Color
                                                                .fromARGB(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    255),
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            fontFamily:
                                                                'Montserrat Regular',
                                                            fontSize: 10),
                                                      ))),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 2,
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
                                                                          '2,000',
                                                                          style: TextStyle(
                                                                              color: Color.fromARGB(255, 255, 255, 255),
                                                                              fontWeight: FontWeight.w300,
                                                                              fontFamily: 'Montserrat Regular',
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
                                                      color: Color(0xFF232532),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Row(
                                                    children: [
                                                      const Text(
                                                        'Buy - ',
                                                        style: TextStyle(
                                                            color:
                                                                Color
                                                                    .fromARGB(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        255),
                                                            fontFamily:
                                                                'Montserrat Regular',
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
                                                                    '1,300',
                                                                    style: TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                        fontFamily:
                                                                            'Montserrat Regular',
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
                                _showAqua();
                              },
                              child: Container(
                                height: 170,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xFF232532),
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
                                          color: Color(0xFF191B2A),
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
                                            'Ultra Tools',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontWeight: FontWeight.w600,
                                                fontFamily:
                                                    'Montserrat SemiBold',
                                                fontSize: 12),
                                          ),
                                          const SizedBox(
                                            height: 4,
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
                                                        '17,500',
                                                        style: TextStyle(
                                                            color:
                                                                Color
                                                                    .fromARGB(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        255),
                                                            fontFamily:
                                                                'Montserrat Regular',
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            fontSize: 10),
                                                      ))),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 2,
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
                                                                          '3,000',
                                                                          style: TextStyle(
                                                                              color: Color.fromARGB(255, 255, 255, 255),
                                                                              fontWeight: FontWeight.w300,
                                                                              fontFamily: 'Montserrat Regular',
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
                                                      color: Color(0xFF232532),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Row(
                                                    children: [
                                                      const Text(
                                                        'Buy - ',
                                                        style: TextStyle(
                                                            color:
                                                                Color
                                                                    .fromARGB(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        255),
                                                            fontFamily:
                                                                'Montserrat Regular',
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
                                                                    '1,900',
                                                                    style: TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                        fontFamily:
                                                                            'Montserrat Regular',
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
                                _showInferno();
                              },
                              child: Container(
                                height: 170,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xFF232532),
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
                                          color: Color(0xFF191B2A),
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
                                            'Hyper Miner',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontFamily:
                                                    'Montserrat SemiBold',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12),
                                          ),
                                          const SizedBox(
                                            height: 4,
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
                                                        '25,000',
                                                        style: TextStyle(
                                                            color:
                                                                Color
                                                                    .fromARGB(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        255),
                                                            fontFamily:
                                                                'Montserrat Regular',
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            fontSize: 10),
                                                      ))),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 2,
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
                                                                          '5,000',
                                                                          style: TextStyle(
                                                                              color: Color.fromARGB(255, 255, 255, 255),
                                                                              fontWeight: FontWeight.w300,
                                                                              fontFamily: 'Montserrat Regular',
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
                                                      color: Color(0xFF232532),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Row(
                                                    children: [
                                                      const Text(
                                                        'Buy - ',
                                                        style: TextStyle(
                                                            color:
                                                                Color
                                                                    .fromARGB(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        255),
                                                            fontFamily:
                                                                'Montserrat Regular',
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
                                                                    '2,500',
                                                                    style: TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                        fontFamily:
                                                                            'Montserrat Regular',
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
