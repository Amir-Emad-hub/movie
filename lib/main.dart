import 'package:flutter/material.dart';
import 'package:movies_app/screens/Browse_screen.dart';
import 'package:movies_app/screens/home_screen.dart';
import 'package:movies_app/screens/search.dart';
import 'package:movies_app/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: Colors.black, // Background color
      ),
      home: SplashScreen(), // Set initial route
      routes: {
        HomeScreen.routename: (context) => HomeScreen(),
        SearchScreen.routeName: (context) => SearchScreen(),
        BrowseScreen.routeName: (context) => BrowseScreen(),
        // Add other routes here as needed
      },
    );
  }
}
