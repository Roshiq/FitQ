import 'package:flutter/material.dart';
import 'package:flutter_gym/screen/payments.dart';
import 'package:flutter_gym/screen/settings.dart';
import 'package:flutter_gym/screen/students.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const Center(
            child: Padding(
              padding:
                  EdgeInsets.only(top: 110, left: 50, right: 50, bottom: 60),
              child: Column(
                children: [
                  Icon(
                    Icons.sports_gymnastics,
                    color: Colors.white,
                  ),
                  Text(
                    "Fitque",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Settings(),
                              ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 40,
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(children: [
                                  Icon(
                                    Icons.settings,
                                    size: 45,
                                  ),
                                  Text(
                                    "Settings",
                                    style: TextStyle(fontSize: 15),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Students(),
                              ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 40,
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(children: [
                                  Icon(
                                    Icons.add_reaction_sharp,
                                    size: 45,
                                  ),
                                  Text(
                                    "Students",
                                    style: TextStyle(fontSize: 15),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PaymentScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 40,
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(children: [
                                  Icon(
                                    Icons.payments,
                                    size: 45,
                                  ),
                                  Text(
                                    "Payments",
                                    style: TextStyle(fontSize: 15),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 40,
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(children: [
                                  Icon(
                                    Icons.drafts_rounded,
                                    size: 45,
                                  ),
                                  Text(
                                    "Payment Due",
                                    style: TextStyle(fontSize: 15),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 40,
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(children: [
                                  Icon(
                                    Icons.my_library_books_sharp,
                                    size: 45,
                                  ),
                                  Text(
                                    "Attendance",
                                    style: TextStyle(fontSize: 15),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 40,
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(children: [
                                  Icon(
                                    Icons.settings_accessibility_outlined,
                                    size: 45,
                                  ),
                                  Text(
                                    "P T",
                                    style: TextStyle(fontSize: 15),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 40,
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(children: [
                                  Icon(
                                    Icons.pie_chart_sharp,
                                    size: 45,
                                  ),
                                  Text(
                                    "Utils",
                                    style: TextStyle(fontSize: 15),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 40,
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(children: [
                                  Icon(
                                    Icons.logout_outlined,
                                    size: 45,
                                  ),
                                  Text(
                                    "Log out",
                                    style: TextStyle(fontSize: 15),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
