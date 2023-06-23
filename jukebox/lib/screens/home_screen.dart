import 'package:flutter/material.dart';
import 'package:jukebox/models/user.dart';
import 'package:jukebox/services/user_service.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Remove the app bar
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          const SizedBox(height: 16.0),
          const Text(
            'Recently Played',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB5FE27),
            ),
          ),
          const SizedBox(height: 8.0),
          SizedBox(
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // Replace with your recently played items
                _buildRecentlyPlayedItem('Song 1', 'Artist 1', 'assets/song1.jpg'),
                _buildRecentlyPlayedItem('Song 2', 'Artist 2', 'assets/song2.jpg'),
                _buildRecentlyPlayedItem('Song 3', 'Artist 3', 'assets/song3.jpg'),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Recommended',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB5FE27),
            ),
          ),
          const SizedBox(height: 8.0),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              // Replace with your recommended items
              _buildRecommendedItem('Playlist 1', 'assets/playlist1.jpg'),
              _buildRecommendedItem('Playlist 2', 'assets/playlist2.jpg'),
              _buildRecommendedItem('Playlist 3', 'assets/playlist3.jpg'),
              _buildRecommendedItem('Playlist 4', 'assets/playlist4.jpg'),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.home, color: Color(0xFFB5FE27)), // Set home icon color
              onPressed: () {
                // Handle home button tap
              },
            ),
            IconButton(
              icon: const Icon(Icons.search, color: Color(0xFFB5FE27)), // Set search icon color
              onPressed: () {
                // Handle search button tap
              },
            ),
            IconButton(
              icon: const Icon(Icons.library_music, color: Color(0xFFB5FE27)), // Set library icon color
              onPressed: () {
                // Handle library button tap
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentlyPlayedItem(String title, String artist, String imagePath) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: Container(
        margin: const EdgeInsets.only(right: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 8.0,
              left: 8.0,
              right: 8.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    artist,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecommendedItem(String title, String imagePath) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
