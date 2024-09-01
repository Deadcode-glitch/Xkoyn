import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:xcoin/faqs2.dart';
import 'package:xcoin/invites.dart';
import 'dart:ui';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  StreamSubscription? _subscription;
  bool isShaking = false;

  int counter1 = 5000;
  double counter2 = 0.00005;
  int progressCounter = 200;
  double progressValue = 1.0;
  Timer? incrementTimer;
  String name = '';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = TweenSequence([
      TweenSequenceItem(tween: Tween(begin: 0.0, end: 10.0), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 10.0, end: -10.0), weight: 1),
      TweenSequenceItem(tween: Tween(begin: -10.0, end: 10.0), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 10.0, end: -10.0), weight: 1),
      TweenSequenceItem(tween: Tween(begin: -10.0, end: 0.0), weight: 1),
    ]).animate(_controller);

    _subscription = accelerometerEvents.listen((AccelerometerEvent event) {
      if (event.x.abs() > 2 || event.y.abs() > 2 || event.z.abs() > 2) {
        if (!isShaking && progressCounter > 0) {
          isShaking = true;
          incrementCounter();
        }
      } else {
        isShaking = false;
      }
    });

    _loadCounter();
  }

  @override
  void dispose() {
    _controller.dispose();
    _subscription?.cancel();
    incrementTimer?.cancel();
    super.dispose();
  }

  Future<void> _saveCounter() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('counter', counter1);
    prefs.setDouble('counter2', counter2);
  }

  Future<void> _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      counter1 = prefs.getInt('counter') ?? 0;
      counter2 = prefs.getDouble('counter2') ?? 0;
      name = prefs.getString('userNickname') ?? '';
    });
  }

  void _shakeImage() {
    if (progressCounter > 0) {
      _controller.forward(from: 0.0);
      incrementCounter();
      _saveCounter();
    }
  }

  void startIncrementing() {
    incrementTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (progressCounter < 200) {
        setState(() {
          progressCounter += 1;
          progressValue = progressCounter / 200;
        });
      } else {
        incrementTimer?.cancel();
      }
    });
  }

  void incrementCounter() {
    setState(() {
      if (progressCounter > 0) {
        counter1 += 1;
        counter2 += 0.00004;
        progressCounter -= 1;
        progressValue = progressCounter / 200;

        // Use .set() to create or update the document in Firestore
        FirebaseFirestore.instance
            .collection('yourCollectionName')
            .doc('yourDocumentId')
            .set(
                {
              'counter1': counter1,
              'counter2': counter2,
              'progressCounter': progressCounter,
              'progressValue': progressValue,
            },
                SetOptions(
                    merge:
                        true)) // Merge: true ensures it updates existing fields, or creates new ones.
            .then((_) {
          print("Values updated successfully in Firestore");
        }).catchError((error) {
          print("Failed to update Firestore: $error");
        });

        if (progressCounter == 0) {
          startIncrementing();
        }
      }
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
                      'Withdrawal threshold is 20 USDT. You can transfer to your wallet after you have accumulated up to 20 USDT',
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
    return Scaffold(
      backgroundColor: Color(0xFF0E101F),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image

          Container(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Color(0xFF191B2A).withOpacity(1),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    size: 14,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              ' $name',
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontFamily: 'Montserrat Regular',
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Invites(),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Color(0xFF191B2A).withOpacity(1),
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.people,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Invites',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontFamily: 'Montserrat Regular',
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),

                    //PROFIT PER CLICK CONTAINER
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Color(0xFF232532).withOpacity(1),
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Profit per click',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontFamily: 'Montserrat Regular',
                                      fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'lib/images/xkoyn.png',
                                      width: 10,
                                      height: 10,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    const Text(
                                      '+1',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 10,
                                          fontFamily: 'Montserrat Regular',
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'lib/images/usdt2.png',
                                      width: 10,
                                      height: 10,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    const Text(
                                      '+0.00005',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 10,
                                          fontFamily: 'Montserrat Regular',
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Color(0xFF232532).withOpacity(1),
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Profit per hour',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontFamily: 'Montserrat Regular',
                                      fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'lib/images/xkoyn.png',
                                      width: 10,
                                      height: 10,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    const Text(
                                      '+0',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 10,
                                          fontFamily: 'Montserrat Regular',
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'lib/images/usdt2.png',
                                      width: 10,
                                      height: 10,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    const Text(
                                      '+0',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 10,
                                          fontFamily: 'Montserrat Regular',
                                          fontWeight: FontWeight.w500),
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
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/images/xkoyn.png',
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          '$counter1',
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 34,
                              fontFamily: 'Montserrat Bold',
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('lib/images/usdt2.png',
                            width: 10, height: 10),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          counter2.toStringAsFixed(5),
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 16,
                              fontFamily: 'Montserrat Medium',
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
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
                    const SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: _shakeImage,
                      child: AnimatedBuilder(
                        animation: _animation,
                        builder: (context, child) {
                          return Transform.translate(
                            offset: Offset(_animation.value, 0),
                            child: child,
                          );
                        },
                        child: Image.asset('lib/images/xkoyn.png',
                            width: 210, height: 210),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Faqs2(),
                                ),
                              );
                            },
                            child: Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 36, 38, 55),
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Icon(
                                  Icons.question_answer,
                                  color: Colors.white,
                                  size: 18,
                                ))),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          'FAQS',
                          style: TextStyle(
                              color: Color.fromARGB(255, 233, 233, 233),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 8),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                            onTap: () async {
                              const url = 'https://t.me/xkoyn_channel';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 36, 38, 55),
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Icon(
                                  Icons.headphones,
                                  color: Colors.white,
                                  size: 18,
                                ))),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          'Support',
                          style: TextStyle(
                              color: Color.fromARGB(255, 233, 233, 233),
                              fontFamily: 'Montserrat Regular',
                              fontSize: 8),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 4,
                            ),
                            Expanded(
                              child: Container(
                                width: 100,
                                height: 6,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: LinearProgressIndicator(
                                    backgroundColor: Color(0xFF232532),
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Color(0xFFACB1D8)),
                                    minHeight: 10,
                                    value: progressValue,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          Text(
                            '$progressCounter / 200',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'Montserrat Bold',
                                fontWeight: FontWeight.w700,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
