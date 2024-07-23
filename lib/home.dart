import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
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

        if (progressCounter == 0) {
          startIncrementing();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'lib/images/wallpaper.png', // Replace with your image path
            fit: BoxFit.cover,
          ),
          // Transparent overlay with blur
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              color: Color.fromARGB(255, 255, 224, 147)
                  .withOpacity(0.9), // Adjust the opacity as needed
            ),
          ),
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
                                  color: Colors.white.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color.fromARGB(255, 207, 180, 0),
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
                                  color: Color.fromARGB(255, 0, 0, 0),
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
                                color: Colors.white.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.people,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Invites',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
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
                                color: Colors.white.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Profit per click',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
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
                                              255, 105, 105, 105),
                                          fontSize: 10,
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
                                              255, 105, 105, 105),
                                          fontSize: 10,
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
                                color: Colors.white.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Profit per hour',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
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
                                              255, 105, 105, 105),
                                          fontSize: 10,
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
                                              255, 105, 105, 105),
                                          fontSize: 10,
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
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 34,
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
                              color: Color.fromARGB(255, 127, 127, 127),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
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
                                    backgroundColor:
                                        Color.fromARGB(255, 207, 207, 207),
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Color.fromARGB(255, 0, 0, 0)),
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
                            style: TextStyle(
                                color: Color.fromARGB(255, 14, 13, 13),
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
