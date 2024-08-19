import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xcoin/dash.dart';
import 'dart:math';
import 'dart:ui';

import 'package:xcoin/dashboard.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with TickerProviderStateMixin {
  final TextEditingController _nicknameController = TextEditingController();
  final TextEditingController _referralController = TextEditingController();
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late AnimationController _entryController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _checkUserEmail();

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

    _entryController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _entryController,
        curve: Curves.easeIn,
      ),
    );

    _slideAnimation =
        Tween<Offset>(begin: Offset(0, 0.1), end: Offset.zero).animate(
      CurvedAnimation(
        parent: _entryController,
        curve: Curves.easeInOut,
      ),
    );

    _entryController.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    _entryController.dispose();
    _nicknameController.dispose();
    _referralController.dispose();
    super.dispose();
  }

  Future<void> _checkUserEmail() async {
    final prefs = await SharedPreferences.getInstance();
    final nickname = prefs.getString('userNickname');
    if (nickname != null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Dashboard2()),
      );
    }
  }

  Future<void> _signUp() async {
    final String nickname = _nicknameController.text;
    final String referralCode = _referralController.text;

    if (nickname.isNotEmpty) {
      final userRef =
          FirebaseFirestore.instance.collection('users').doc(nickname);

      // Check if referral code is valid
      if (referralCode.isNotEmpty) {
        final referralSnapshot = await FirebaseFirestore.instance
            .collection('users')
            .where('referralCode', isEqualTo: referralCode)
            .get();

        if (referralSnapshot.docs.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Invalid referral code')),
          );
          return;
        }
      }

      // Generate a unique referral code for the new user
      final newReferralCode = _generateReferralCode();

      // Save user data to Firestore
      await userRef.set({
        'nickname': nickname,
        'referralCode': newReferralCode,
        'referrer': referralCode.isNotEmpty ? referralCode : null,
      });

      // Save user email and referral code in shared preferences
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('userNickname', nickname);
      await prefs.setString('referralCode', newReferralCode);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Dashboard(),
        ),
      );
    }
  }

  String _generateReferralCode() {
    final random = Random();
    final code = List<int>.generate(6, (index) => random.nextInt(10));
    return code.join('');
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
      _signUp();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E101F),
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: SlideTransition(
          position: _slideAnimation,
          child: Container(
            padding: const EdgeInsets.only(left: 50, top: 20, right: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Xkoyn',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 24,
                      fontFamily: 'Montserrat SemiBold',
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: BoxDecoration(
                      color: const Color(0xFF232532),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    controller: _nicknameController,
                    style: const TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 255, 255, 255)),
                    decoration: const InputDecoration(
                      labelText: 'Nickname',
                      labelStyle: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 133, 133, 133),
                        fontFamily: 'Montserrat Regular',
                      ),
                      enabledBorder:
                          InputBorder.none, // Remove underline when enabled
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: BoxDecoration(
                      color: const Color(0xFF232532),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    controller: _referralController,
                    style: const TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 255, 255, 255)),
                    decoration: const InputDecoration(
                      labelText: 'Referral Code',
                      hintText: 'optional',
                      hintStyle: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 163, 163, 163),
                          fontFamily: 'Montserrat Regular'),
                      labelStyle: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 133, 133, 133),
                          fontFamily: 'Montserrat Regular'),
                      enabledBorder:
                          InputBorder.none, // Remove underline when enabled
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                InkWell(
                  onTap: _showLoadingDialog,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(
                        top: 15, bottom: 15, right: 8, left: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFF7540F0),
                    ),
                    child: const Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 12,
                            fontFamily: 'Montserrat Regular',
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
