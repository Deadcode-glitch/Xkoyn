import 'package:flutter/material.dart';

class Faqs2 extends StatefulWidget {
  const Faqs2({Key? key}) : super(key: key);

  @override
  State<Faqs2> createState() => _Faqs2State();
}

class _Faqs2State extends State<Faqs2> {
  @override
  void initState() {
    super.initState();
    // Start a timer to navigate to the next screen after 5 seconds
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
              //color: Colors.amber,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
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
                          color: Color.fromARGB(255, 46, 46, 46)),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'FAQS ',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Text(
                        'Frequently asked questions ',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 159, 159, 159),
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF232532)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'What is Xkoyn ? ',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Xkoyn is an innovative project introducing a refreshed Tap-to-Earn feature on TON, tailored for the crypto community. With this platform, you can tap to receive USDT, a widely-used stablecoin that can be easily withdrawn, as well as xkoyn(xcoin), the project\'s own token that grants eligibility for airdrops. The app will soon be available not just on TON but also across various other networks.',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 159, 159, 159),
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF232532)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'How to earn ? ',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'To begin accumulating USDT, just enable the Telegram bot and interact with the screen. Premium Telegram users can earn 2.5 USDT per day, while standard users can earn 1 USDT daily. You also get to mine our native token "\$Xkoyn" during this process.',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 159, 159, 159),
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF232532)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'How to boost earnings ? ',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Boost your earnings with special upgrades that enhance your earnings per tap or provide passive income every hour, even when you’re offline. Visit the “Upgrades” section, choose your desired plan, and purchase it to increase your income. All upgrades stack, so you can invest in multiple enhancements to maximize your profit!',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 159, 159, 159),
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF232532)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'How to purchase a plan ? ',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'To upgrade or purchase a plan, navigate to the "upgrades" section and choose your desired plan. Then click on the confirm button in the pop up dialog to confirm your purchase. To make your pruchase successful, you need to transfer to your xkoyn usdt wallet before purchasing the upgrade',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 159, 159, 159),
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF232532)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'How to Withdraw funds ? ',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Go to the wallet section of the app and click on the withdraw button to navigate to the withdrawal page where you can withdraw you funds',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 159, 159, 159),
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
