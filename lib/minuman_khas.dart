import 'package:flutter/material.dart';

class MinumanKhasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Minuman Khas Kediri')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        children: [
          foodcard('Wedang Ronde', 'assets/image/wedang_ronde.png'),
          foodcard('Es Dawet', 'assets/image/es_dawet.png'),
          foodcard('Teh Telang', 'assets/image/teh_telang.png'),
        ],
      ),
    );
  }

  Widget foodcard(String drinkName, String imagePath) {
    return Card(
      child: Column(
        children: [
          Expanded(child: Image.asset(imagePath, fit: BoxFit.cover)),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(drinkName, style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
