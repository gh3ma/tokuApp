import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5DDC8), // Background color
      appBar: AppBar(
        title: const Text(
          'About the App',
          style: TextStyle(
            fontSize: 27,
            fontFamily: 'DynaPuff',
            color: const Color(0xFFE5DDC8),
          ),
        ),
        backgroundColor: const Color(0xFF004369), // App bar color
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Learn Japanese Easily',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF004369), // Text color
              ),
            ),
            SizedBox(height: 10),
            Text(
              'This app is designed to help learners of all levels\n'
              'master the Japanese language.\n',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 2),
            Text(
              'Features:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF004369),
              ),
            ),
            SizedBox(height: 10),
            Text(
              '• Learn Hiragana, Katakana, and Kanji\n'
              '• Interactive vocabulary and grammar lessons\n'
              '• Audio pronunciation by native speakers\n'
              '• Flashcards and quizzes for practice\n'
              '• Track your progress and set learning goals',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Version: 1.0.0',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF004369),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Developed by Ghaith Almadani',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
