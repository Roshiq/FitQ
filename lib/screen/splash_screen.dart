import 'dart:async';
import 'package:flutter/material.dart';


import 'Login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _progressValue = 0.0;
  String _displayedText = '';

  @override
  void initState() {
    super.initState();
    _animateText();
  }

  void _animateText() {
    const String originalText = "Fitque";
    int currentIndex = 0;
    Timer.periodic(const Duration(milliseconds: 250), (timer) {
      setState(() {
        if (currentIndex <= originalText.length) {
          _displayedText = originalText.substring(0, currentIndex);
          currentIndex++;
        } else {
          timer.cancel();
          _startLoading();
        }
      });
    });
  }

  void _startLoading() {
    Timer.periodic(const Duration(milliseconds: 20), (timer) {
      setState(() {
        _progressValue += 0.01;
        if (_progressValue >= 1.0) {
          timer.cancel();
          _navigateToHome();
        }
      });
    });
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 700));
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              _displayedText,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(height: 20),
          if (_progressValue > 0.0)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: LinearProgressIndicator(
                value: _progressValue.clamp(0.0, 1.0),
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                backgroundColor: Colors.grey,
              ),
            ),
        ],
      ),
    );
  }
}
