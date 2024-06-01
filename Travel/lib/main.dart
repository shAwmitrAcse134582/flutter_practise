import 'package:flutter/material.dart';
import 'explore.dart'; // Import your Explore.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              'images/1.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
              left: 50.0,
              top: 60,
              child: Text(
                "ASPEN",
                style: TextStyle(
                  fontSize: 116,
                  color: Colors.white,
                  fontFamily: 'Hiatus',
                ),
              ),
            ),
            Positioned(
              left: 40.0,
              top: 400,
              child: Image.asset(
                'images/3.png',
              ),
            ),
            Positioned(
              left: 40.0,
              top: 530.0,
              child: Container(
                width: 300.0,
                height: 50, // Set your desired width here
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Explore()), // Navigate to Explore.dart
                    );
                  },
                  child: Text(
                    "Explore",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    // Add any additional styling here
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
