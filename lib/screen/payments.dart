import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
           Center(
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
         
        ],
      ),
    );
  }
}
