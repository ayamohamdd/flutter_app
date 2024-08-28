import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_13/screens/welcome.dart';

class startup extends StatefulWidget {
  @override
  _startupState createState() => _startupState();
}

class _startupState extends State<startup> {
  @override
  void initState() {
    super.initState();
    // Start the timer
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => welcome()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset('assets/images/logo.png', scale: 1.2),
            SizedBox(
              height: 50,
            ),
            Text(
              'powered by CX3',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 100,
            ),
            Image.asset('assets/images/develop.gif', scale: 1.2),
          ],
        ),
      ),
    );
  }
}
