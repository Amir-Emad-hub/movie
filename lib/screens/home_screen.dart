import 'package:flutter/material.dart';
import 'package:movies_app/screens/search.dart'; // Import SearchPage
import 'Browse_screen.dart'; // Import BrowseScreen
import 'WatchList_Screen.dart'; // Import WatchlistPage
import 'NewRelease_MOVIES.dart'; // Import NewRelease_MOVIES widget
import 'recommended_movies.dart'; // Import recommended_movies widget

class HomeScreen extends StatefulWidget {
  static const String routename = "homeScreen"; // Define route name for navigation

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // Track current index of the navigation bar

  // Define a list of screens corresponding to the tabs
  final List<Widget> _screens = [
    HomeScreenContent(), // Home screen content
    SearchScreen(), // Search page content
    BrowseScreen(), // Browse page content
    WatchlistPage(), // Watchlist page content
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: _screens[_currentIndex], // Display the current screen based on selected tab
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.orangeAccent, // Active icon and label color
        unselectedItemColor: Colors.white, // Inactive icon and label color
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the current index on tab change
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Browse',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Watchlist',
          ),
        ],
      ),
    );
  }
}

class HomeScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Featured Movie Section
          Container(
            height: 300,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/Image.jpg',
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Center(
                  child: Icon(
                    Icons.play_circle_outline,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dora and the Lost City of Gold',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '2019 PG-13 2h 7m',

                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
              ],
            ),
          ),
          // New Releases Section
          NewReleases(),
          // Recommended Section
          RecommendedMovies(),
        ],
      ),
    );
  }
}
