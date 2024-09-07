import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
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
                        'Task ',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat Bold',
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Text(
                        'Complete the task below to earn extra bonuses ',
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Montserrat Regular',
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
                          'Join Community? ',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat Bold',
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Join the xkoyn community',
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Montserrat Regular',
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
                          'Purchase first upgrade',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat Bold',
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Purchase any of the available packages',
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Montserrat Regular',
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
                              fontSize: 12,
                              fontFamily: 'Montserrat Bold',
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Boost your earnings with special upgrades ',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat Regular',
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
