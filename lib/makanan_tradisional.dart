import 'package:flutter/material.dart';

class MakananTradisionalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Makanan Tradisional Kediri')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        children: [
          foodcard('Tahu Takwa', 'assets/image/tahu_takwa.png'),
          foodcard('Pecel Kediri', 'assets/image/pecel_kediri.png'),
          foodcard('Soto Kediri', 'assets/image/soto_kediri.png'),
        ],
      ),
    );
  }

  Widget foodcard(String foodName, String imagePath) {
    return Card(
      child: Column(
        children: [
          Expanded(child: Image.asset(imagePath, fit: BoxFit.cover)),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(foodName, style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
