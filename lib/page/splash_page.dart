import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:future_job_with_provider/theme.dart';

import 'getstarted_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => GetStartedPage()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4141A4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                "assets/images/logo.png",
                height: 76,
                width: 59,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "FUTUREJOB",
              style: Heading.copyWith(
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
