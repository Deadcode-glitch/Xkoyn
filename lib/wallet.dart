import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:xcoin/depo.dart';
import 'package:xcoin/faqs.dart';
import 'package:xcoin/firstscreen.dart';
import 'dart:convert';
import 'dart:ui';
import 'package:xcoin/koyn.dart';
import 'package:xcoin/smoothing.dart';
import 'package:xcoin/ussf.dart';
import 'package:xcoin/uwallet.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xcoin/uwallet2.dart';

import 'faqs2.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> with TickerProviderStateMixin {
  late AnimationController _slideController;
  late Animation<Offset> _offsetAnimation;
  late AnimationController _rotationController;
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  double usdtBalance = 10; //change back to 10
  double usdtToDollarRate = 1.0; // Default value
  double dollarEquivalent = 0.0;

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

    // _showWelcomeDialog();

    fetchUsdtToDollarRate().then((rate) {
      setState(() {
        usdtToDollarRate = rate;
        dollarEquivalent = usdtBalance * usdtToDollarRate;
      });
    });

    _checkWelcomeDialogStatus();
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
                        'Bonus balance is locked. Perform any transaction between 5-10 usdt to unlock your balance',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 201, 201, 201),
                          fontSize: 10,
                          fontFamily: 'Montserrat Regular',
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
                                  fontFamily: 'Montserrat Regular',
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

  Future<void> _checkWelcomeDialogStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool hasSeenWelcomeDialog = prefs.getBool('hasSeenWelcomeDialog') ?? false;

    if (!hasSeenWelcomeDialog) {
      _showWelcomeDialog();
    }
  }

  void _showWelcomeDialog() {
    Future.delayed(Duration.zero, () {
      _slideController.forward();
      showDialog(
        context: context,
        barrierDismissible: false,
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
                backgroundColor: Color(0xFF0E101F),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        child: Image.asset('lib/images/welcomin.png'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Congratulations',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 14,
                          fontFamily: 'Montserrat SeniBold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'We are giving out 10usdt to randoms users who join the xkoyn mini app. You can view this bonus in your wallet balance',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 197, 197, 197),
                          fontSize: 9,
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
                              _setWelcomeDialogSeen();
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
                                  fontFamily: 'Montserrat Medium',
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

  Future<void> _setWelcomeDialogSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hasSeenWelcomeDialog', true);
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

  void _showLoadingDialog2() {
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
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Depo(),
        ),
      );
    });
  }

  Future<double> fetchUsdtToDollarRate() async {
    final url =
        'https://api.coingecko.com/api/v3/simple/price?ids=usd-coin&vs_currencies=usd';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return data['usd-coin']['usd'];
      } else {
        throw Exception('Failed to load conversion rate');
      }
    } catch (e) {
      print(e);
      return 1.0; // Default to 1 if fetching fails
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E101F),
      body: Container(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Wallet',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
                fontFamily: 'Montserrat SemiBold',
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: [
                const Text(
                  'Total Balance',
                  style: TextStyle(
                    color: Color.fromARGB(255, 228, 228, 228),
                    fontSize: 12,
                    fontFamily: 'Montserrat Regular',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '\$${dollarEquivalent.toStringAsFixed(2)}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 40,
                    fontFamily: 'Montserrat Bold',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _showLoadingDialog2();
                    },
                    onDoubleTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FirstScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFF191B2A),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.arrow_downward,
                            size: 15,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Deposit',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _showLoadingDialog();
                    },
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFF191B2A),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.arrow_upward,
                            size: 15,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Withdraw',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 12,
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
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Koyn(),
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFF232532),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'lib/images/xkoyn.png',
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Text(
                              'XKOYN',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'Montserrat Regular',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              '0',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 12,
                                fontFamily: 'Montserrat Regular',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              '\$0.00',
                              style: TextStyle(
                                color: Color.fromARGB(255, 228, 228, 228),
                                fontSize: 8,
                                fontFamily: 'Montserrat Regular',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Uwallet(),
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFF232532),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'lib/images/usdt2.png',
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Text(
                              'USDT',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 12,
                                fontFamily: 'Montserrat Regular',
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              '10',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 12,
                                fontFamily: 'Montserrat Regular',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              '\$${dollarEquivalent.toStringAsFixed(2)}',
                              style: const TextStyle(
                                color: Color.fromARGB(255, 228, 228, 228),
                                fontSize: 8,
                                fontFamily: 'Montserrat Regular',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
