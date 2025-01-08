import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;
  final String composition;
  final String story;

  DetailPage({
    required this.title,
    required this.imagePath,
    required this.description,
    required this.composition,
    required this.story,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath, fit: BoxFit.cover),
            SizedBox(height: 16.0),
            Text(title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 16.0),
            Text(description, style: TextStyle(fontSize: 16)),
            SizedBox(height: 16.0),
            Text("Komposisi:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(composition, style: TextStyle(fontSize: 16)),
            SizedBox(height: 16.0),
            Text("Cerita Asal-Usul:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(story, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}