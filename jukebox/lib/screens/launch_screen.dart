import 'package:flutter/material.dart';
import 'package:jukebox/screens/login_screen.dart';

import 'home_screen.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Delay for 2 seconds and then navigate to the login screen
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });

    return const Scaffold(
      backgroundColor: Color(0xFFB5FE27),
      body: Center(
        child: Text(
          'JUKEBOX',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
