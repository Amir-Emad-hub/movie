import 'package:flutter/material.dart';
import 'MovieCard.dart'; // Import the MovieCard widget

class NewReleases extends StatelessWidget {
  final List<Map<String, String>> newReleases = [
    {
      'title': 'Deadpool 2',
      'imageUrl': 'assets/images/2.jpg',
      'rating': '7.7',
      'year': '2018',
      'duration': '1h 59m',
    },
    {
      'title': 'Toy Story 4',
      'imageUrl': 'assets/images/4.jpg',
      'rating': '8.7',
      'year': '2019',
      'duration': '1h 40m',
    },
    {
      'title': 'Toy Story 4',
      'imageUrl': 'assets/images/Annabelle.jpg',
      'rating': '8.7',
      'year': '2019',
      'duration': '1h 40m',
    },
    {
      'title': 'Toy Story 4',
      'imageUrl': 'assets/images/f8b938401308eabc48c30669869eeac8.jpg',
      'rating': '8.7',
      'year': '2019',
      'duration': '1h 40m',
    },
    {
      'title': 'Amir',
      'imageUrl': 'assets/images/f8b938401308eabc48c30669869eeac8.jpg',
      'rating': '8.7',
      'year': '2019',
      'duration': '1h 40m',
    },
    // Add more movies here...
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'New Releases',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: newReleases.length,
            itemBuilder: (context, index) {
              var movie = newReleases[index];
              return MovieCard(
                title: movie['title']!,
                imageUrl: movie['imageUrl']!,
                rating: movie['rating']!,
                year: movie['year']!,
                duration: movie['duration']!,
              );
            },
          ),
        ),
      ],
    );
  }
}
