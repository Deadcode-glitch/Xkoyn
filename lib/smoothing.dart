import 'package:flutter/material.dart';
import 'dart:ui';

class Smoothing extends StatefulWidget {
  const Smoothing({Key? key}) : super(key: key);

  @override
  State<Smoothing> createState() => _SmoothingState();
}

class _SmoothingState extends State<Smoothing>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation1;
  late Animation<Offset> _animation2;
  late Animation<Offset> _animation3;
  late Animation<Offset> _animation4;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 8),
      vsync: this,
    )..repeat(reverse: true); // Loop the animation

    _animation1 = _buildAnimation(0.0);
    _animation2 = _buildAnimation(0.2);
    _animation3 = _buildAnimation(0.4);
    _animation4 = _buildAnimation(0.6);
  }

  Animation<Offset> _buildAnimation(double delay) {
    return TweenSequence<Offset>([
      TweenSequenceItem(
        tween: Tween<Offset>(
          begin: Offset(0, 1),
          end: Offset(1, 1),
        ).chain(CurveTween(curve: Curves.easeInOut)),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: Tween<Offset>(
          begin: Offset(1, 1),
          end: Offset(1, -1),
        ).chain(CurveTween(curve: Curves.easeInOut)),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: Tween<Offset>(
          begin: Offset(1, -1),
          end: Offset(-1, -1),
        ).chain(CurveTween(curve: Curves.easeInOut)),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: Tween<Offset>(
          begin: Offset(-1, -1),
          end: Offset(-1, 1),
        ).chain(CurveTween(curve: Curves.easeInOut)),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: Tween<Offset>(
          begin: Offset(-1, 1),
          end: Offset(0, 1),
        ).chain(CurveTween(curve: Curves.easeInOut)),
        weight: 1,
      ),
    ]).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(
          delay,
          1.0,
          curve: Curves.linear,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildAnimatedImage('lib/images/xkoyn.png', _animation1),
                _buildAnimatedImage('lib/images/usdt2.png', _animation2),
                _buildAnimatedImage('lib/images/xkoyn.png', _animation3),
                _buildAnimatedImage('lib/images/usdt2.png', _animation4),
              ],
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Color.fromARGB(255, 255, 223, 152)
                  .withOpacity(0.9), // Adjust opacity as needed
              child: const Center(
                child: Text(
                  'Xkoyn',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'OpenSans',
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnimatedImage(String assetPath, Animation<Offset> animation) {
    return SlideTransition(
      position: animation,
      child: Image.asset(assetPath, width: 160, height: 160),
    );
  }
}
