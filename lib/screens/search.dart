import 'package:flutter/material.dart';
import 'package:movies_app/screens/MovieCard.dart';
import 'package:movies_app/screens/movie.dart';

class SearchScreen extends StatefulWidget {
  static const String routeName = 'searchPage';
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchText = '';
  List<Movie> filteredMovies = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: TextField(
          onChanged: (value) {
            setState(() {
              searchText = value.toLowerCase();
              filteredMovies = newReleases.where((movie) => movie.title.toLowerCase().contains(searchText)).toList();
              filteredMovies = recommended.where((movie) => movie.title.toLowerCase().contains(searchText)).toList();

            });
          },
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(Icons.search, color: Colors.white),
            filled: true,
            fillColor: Colors.grey[900],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      body: searchText.isEmpty
          ? Center(
        child: Text(
          'No movies found',
          style: TextStyle(color: Colors.white),
        ),
      )
          : filteredMovies.isEmpty
          ? Center(
        child: Text(
          'No movies found',
          style: TextStyle(color: Colors.white),
        ),
      )
          : ListView.builder(
        itemCount: filteredMovies.length,
        itemBuilder: (context, index) {
          final movie = filteredMovies[index];
          return ListTile(
            leading: Image.asset(movie.imagePath),
            title: Text(
              movie.title,
              style: TextStyle(color: Colors.white),
            ),

          );
        },
      ),
    );
  }
}
