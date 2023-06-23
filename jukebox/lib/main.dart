import 'package:flutter/material.dart';
import 'package:jukebox/screens/home_screen.dart';
import 'package:jukebox/screens/launch_screen.dart';


void main() {
  runApp(const YourMusicApp());
}

class YourMusicApp extends StatelessWidget {
  const YourMusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your Music App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black, // Set background color to black
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: const LaunchScreen(),
    );
  
  }
}
