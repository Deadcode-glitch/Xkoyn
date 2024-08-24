import 'package:flutter/material.dart';

class Koyn extends StatefulWidget {
  const Koyn({Key? key}) : super(key: key);

  @override
  State<Koyn> createState() => _KoynState();
}

class _KoynState extends State<Koyn> with SingleTickerProviderStateMixin {
  void _showTransactionDialog(String action) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(40.0),
          child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: const BorderSide(
                color: Color.fromARGB(255, 144, 144, 144),
                width: 1.0,
              ), // Border color and width
            ),
            backgroundColor:
                Color(0xFF232532), // Example of custom background color
            child: Container(
              padding: const EdgeInsets.all(20),
              height: 200,
              child: Column(
                mainAxisSize: MainAxisSize.min, // To constrain the height
                children: [
                  Text(
                    '$action Confirmation',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 14,
                      fontFamily: 'Montserrat Medium',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'You cannot perform any transactions yet until coin has been listed on exchange platforms',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 215, 215, 215),
                        fontFamily: 'Montserrat Regular',
                        fontSize: 10,
                        fontWeight: FontWeight.w300),
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
                            color: Color(0xFF7540F0),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          child: const Text(
                            'close',
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Montserrat Medium',
                                color: Color.fromARGB(255, 255, 255, 255)),
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
  }

  late AnimationController _animationController;
  late List<Animation<Offset>> _slideAnimations;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    // Define the slide animations for each widget
    _slideAnimations = [
      for (int i = 0; i < 6; i++)
        Tween<Offset>(
          begin: const Offset(0, 4), // Slide from the bottom
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Interval(
              (i * 0.2),
              1.0,
              curve: Curves.easeInOut,
            ),
          ),
        )
    ];

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E101F),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          alignment: Alignment.center,
          child: Column(
            children: [
              SlideTransition(
                position: _slideAnimations[0],
                child: _buildHeader(context),
              ),
              const SizedBox(height: 50),
              SlideTransition(
                position: _slideAnimations[1],
                child: _buildActionButtons(),
              ),
              const SizedBox(height: 20),
              SlideTransition(
                position: _slideAnimations[2],
                child: _buildInfoCard(),
              ),
              const SizedBox(height: 50),
              SlideTransition(
                position: _slideAnimations[3],
                child: const Icon(Icons.cancel, color: Colors.white),
              ),
              const SizedBox(height: 10),
              SlideTransition(
                position: _slideAnimations[4],
                child: const Text(
                  'No Transactions',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                    fontFamily: 'Montserrat SemiBold',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              SlideTransition(
                position: _slideAnimations[5],
                child: const Text(
                  'You are yet to make a transaction. Any transaction made will show up here',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 218, 218, 218),
                    fontSize: 10,
                    fontFamily: 'Montserrat Regular',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                color: const Color(0xFF191B2A),
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 16,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'XKOYN Balance',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 12,
              fontFamily: 'Montserrat Medium',
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '0.0',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 30,
                  fontFamily: 'Montserrat Bold',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Image.asset(
                'lib/images/xkoyn.png',
                width: 30,
                height: 30,
              ),
            ],
          ),
          const Text(
            '\$0.00',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 12,
              fontFamily: 'Montserrat Regular',
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              _showTransactionDialog('Deposit');
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
                    Icons.arrow_downward,
                    size: 15,
                    color: Colors.white,
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Deposit',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 12,
                      fontFamily: 'Montserrat Regular',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: GestureDetector(
            onTap: () {
              _showTransactionDialog('Withdraw');
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
                  SizedBox(width: 4),
                  Text(
                    'Withdraw',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 12,
                      fontFamily: 'Montserrat Regular',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoCard() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFF191B2A),
      ),
      child: const Text(
        'Xkoyn withdrawals and deposits will be open after the token goes live on exchanges',
        style: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontFamily: 'Montserrat Regular',
          fontSize: 10,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}


//You just received 10 USDT for joining. We are giving out 10 USDT to random players who join the XKoyn telegram mini app. You can view your balance in your wallet.',