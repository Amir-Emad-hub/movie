import 'package:flutter/material.dart';

class WatchlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watchlist'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          'Watchlist Page Content',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
