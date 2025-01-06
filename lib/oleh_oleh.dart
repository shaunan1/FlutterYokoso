import 'package:flutter/material.dart';

class OlehOlehPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Oleh-Oleh Khas Kediri')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        children: [
          foodcard('Getuk Pisang', 'assets/image/getuk_pisang.png'),
          foodcard('Keripik Tahu', 'assets/image/keripik_tahu.png'),
          foodcard('Jenang Grendul', 'assets/image/jenang_grendul.png'),
        ],
      ),
    );
  }

  Widget foodcard(String snackName, String imagePath) {
    return Card(
      child: Column(
        children: [
          Expanded(child: Image.asset(imagePath, fit: BoxFit.cover)),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(snackName, style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
