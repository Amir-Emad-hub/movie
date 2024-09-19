import 'dart:async';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; // Import the home screen

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Navigate to HomeScreen after 20 seconds
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Background color of the splash screen
      body: Container(
        height: double.infinity, // Make sure the image covers the entire height
        width: double.infinity,  // Make sure the image covers the entire width
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash.jpg'),
            fit: BoxFit.cover, // Make the image cover the entire screen
          ),
        ),
      ),
    );
  }
}
