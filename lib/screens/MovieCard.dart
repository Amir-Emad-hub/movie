import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String rating;
  final String year;
  final String duration;

  MovieCard({
    required this.title,
    required this.imageUrl,
    required this.rating,
    required this.year,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, // Set a fixed width for the card
      margin: EdgeInsets.only(right: 8), // Add margin between cards
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 6,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  imageUrl,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.all(4),
                  child: InkWell(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 14),
                    SizedBox(width: 4),
                    Text(
                      rating,
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
                Text(
                  '$year  R  $duration',
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
