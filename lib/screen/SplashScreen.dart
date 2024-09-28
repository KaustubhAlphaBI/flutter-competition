import 'package:competition/Auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Redirect to login or home after some delay or Firebase check.
    Future.delayed(Duration(seconds: 2), () {
      // Check if the user is authenticated
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => AuthGate(),
      ));
    });

    return Scaffold(
      body: Center(
        child: Text('Restaurant Menu App', style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
