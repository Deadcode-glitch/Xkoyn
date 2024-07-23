import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:math';

import 'package:xcoin/dashboard.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _nicknameController = TextEditingController();
  final TextEditingController _referralController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _checkUserEmail();
  }

  Future<void> _checkUserEmail() async {
    final prefs = await SharedPreferences.getInstance();
    final nickname = prefs.getString('userNickname');
    if (nickname != null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Dashboard()),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        padding: const EdgeInsets.only(left: 50, top: 20, right: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Xcoin',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 24,
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
                  color: Color(0xFF3FAFAFA),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                controller: _nicknameController,
                style: const TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 0, 0, 0)),
                decoration: const InputDecoration(
                  labelText: 'Nickname',
                  labelStyle: TextStyle(
                      fontSize: 12, color: Color.fromARGB(255, 133, 133, 133)),
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
                  color: Color(0xFFFAFAFA),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                controller: _referralController,
                style: const TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 0, 0, 0)),
                decoration: const InputDecoration(
                  labelText: 'Referral Code',
                  labelStyle: TextStyle(
                      fontSize: 12, color: Color.fromARGB(255, 133, 133, 133)),
                  enabledBorder:
                      InputBorder.none, // Remove underline when enabled
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 40),
            InkWell(
              onTap: _signUp,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(
                    top: 15, bottom: 15, right: 8, left: 8),
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
      ),
    );
  }
}
