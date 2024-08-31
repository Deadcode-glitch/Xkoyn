import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart'; // Import the package for clipboard

class Invites extends StatefulWidget {
  const Invites({Key? key}) : super(key: key);

  @override
  State<Invites> createState() => _InvitesState();
}

class _InvitesState extends State<Invites> with TickerProviderStateMixin {
  List<String> invitedFriends = [];
  //String? referralCode;
  String referralCode = '';
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
    _loadReferralCode();
    _showWelcomeDialog();
  }

  @override
  void dispose() {
    _slideController.dispose();
    _rotationController.dispose();
    super.dispose();
  }

  Future<void> _loadReferralCode() async {
    final prefs = await SharedPreferences.getInstance();
    final nickname = prefs.getString('userNickname');

    if (nickname != null) {
      final userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(nickname)
          .get();
      setState(() {
        referralCode = userDoc['referralCode'];
      });
      _loadInvitedFriends();
    }
  }

  Future<void> _loadInvitedFriends() async {
    if (referralCode != null) {
      final invitedFriendsSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .where('referrer', isEqualTo: referralCode)
          .get();

      setState(() {
        invitedFriends = invitedFriendsSnapshot.docs
            .map((doc) => doc['nickname'] as String)
            .toList();
      });
    }
  }

  void _copyReferralCode() {
    if (referralCode != null) {
      Clipboard.setData(ClipboardData(text: referralCode));
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Referral code copied to clipboard!')),
      );
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
                backgroundColor: Color(0xFF191b2a),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RotationTransition(
                        turns: _rotationController,
                        child: Container(
                          width: 60,
                          height: 60,
                          child: Image.asset('lib/images/usdt2.png'),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Invite & Earn!',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 14,
                          fontFamily: 'Montserrat SemiBold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Earn up to 0.3 USDT on each succcessful referral you make',
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
                              // _setWelcomeDialogSeen();
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

  void _transferDialog() {
    Future.delayed(Duration.zero, () {
      //_slideController.forward();
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return Padding(
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
                      'Withdrawal threshold for invited friends is 15 USDT. You can transfer to your wallet after you have accumulated up to 15 USDT',
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
                            //Navigator.of(context).pop();
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
                              'Transfer',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Montserrat Regular',
                                color: Color.fromARGB(255, 123, 123, 123),
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
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double totalEarnings = invitedFriends.length * 0.3;

    return Scaffold(
      backgroundColor: Color(0xFF0E101F),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 30, top: 50, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
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
                        color: Color(0xFF191B2A)),
                    child: const Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Invite Friends',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 30,
                  fontFamily: 'Montserrat Bold',
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Earn 0.03 USDT for your direct referrals. Earn up to 15,000 XKOYN & 0.03 USDT for each invite, while your friend receives 30,000!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 228, 228, 228),
                  fontFamily: 'Montserrat Regular',
                  fontSize: 11),
            ),
            const SizedBox(
              height: 50,
            ),
            if (referralCode != null)
              Container(
                width: 180,
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 8, left: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:
                      Color(0xFF7540F0).withOpacity(0.2), // Adjust opacity here
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$referralCode',
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 16,
                          fontFamily: 'Montserrat SemiBold',
                          fontWeight: FontWeight.w600),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.copy,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 14,
                      ),
                      onPressed: _copyReferralCode,
                    ),
                  ],
                ),
              ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/images/xkoyn.png',
                  width: 20,
                  height: 20,
                ),
                Text(
                  '${invitedFriends.length}',
                  style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 54,
                      fontFamily: 'Montserrat Bold',
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total Earnings: \$${totalEarnings.toStringAsFixed(2)} USDT',
                  style: TextStyle(
                    color: Color.fromARGB(255, 169, 169, 169),
                    fontSize: 12,
                    fontFamily: 'Montserrat Regular',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                    onTap: () {
                      _transferDialog();
                    },
                    child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 36, 38, 55),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Icon(
                          Icons.arrow_downward_sharp,
                          color: Colors.white,
                          size: 14,
                        )))
              ],
            ),
            const SizedBox(height: 30),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(8),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: const Text(
                'Friends Invited',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat Regular',
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            const SizedBox(height: 3),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFF232532)),
                child: ListView.builder(
                  itemCount: invitedFriends.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        invitedFriends[index],
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Montserrat Regular',
                            fontWeight: FontWeight.w300),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
