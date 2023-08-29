import 'dart:async'; // Import the dart:async library

import 'package:flutter/material.dart';

class Slideshow extends StatefulWidget {
  @override
  _SlideshowState createState() => _SlideshowState();
}

class _SlideshowState extends State<Slideshow> {
  final List<String> images = [
    'assets/images/one.png',
    'assets/images/two.png',
    'assets/images/three.png',
    'assets/images/four.png',
    // Add more image paths
  ];

  int _currentIndex = 0;

  late Timer _timer; // Timer for automatic image change

  @override
  void initState() {
    super.initState();
    // Start the timer to change images every 2 seconds
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % images.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black, // Set the background color to black
        child: Center(
          child: Image.asset(images[_currentIndex]),
        ),
      ),
    );
  }
}
