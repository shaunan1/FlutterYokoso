import 'package:flutter/material.dart';
import 'detailpage.dart';

class OlehOlehPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Oleh-Oleh Khas Kediri')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        children: [
          foodcard(
            'Getuk Pisang',
            'assets/image/getuk_pisang.png',
            'Camilan manis dari pisang yang dikukus dan dibungkus daun pisang.',
            'Komposisi: Pisang raja nangka matang, gula merah, tepung tapioka, daun pisang untuk pembungkus.',
            'Getuk Pisang adalah camilan khas Kediri yang menggunakan pisang raja nangka. Rasa manisnya alami tanpa banyak tambahan bahan lain. Hidangan ini biasanya dijual di pasar tradisional atau sebagai oleh-oleh khas.',
            context,
          ),
          foodcard(
            'Keripik Tahu',
            'assets/image/keripik_tahu.png',
            'Keripik gurih dari tahu khas Kediri.',
            'Komposisi: Tahu putih (tahu Takwa), tepung terigu, tepung beras, garam, bawang putih, minyak goreng.',
            'Keripik Tahu berasal dari Kediri, yang juga dikenal sebagai "Kota Tahu". Camilan ini terkenal karena kerenyahan dan cita rasa gurihnya, sering dijadikan oleh-oleh untuk wisatawan.',
            context,
          ),
          foodcard(
            'Jenang Grendul',
            'assets/image/jenang_grendul.png',
            'Jenang manis dengan kuah santan yang lezat.',
            'Komposisi: Tepung ketan, gula merah, santan kelapa, daun pandan, garam.',
            'Jenang Grendul adalah hidangan manis tradisional Jawa yang disajikan dengan bola-bola kenyal dari tepung ketan. Kuah santannya yang manis dan gurih menciptakan rasa khas yang sulit dilupakan.',
            context,
          ),
        ],
      ),
    );
  }

  Widget foodcard(
    String foodName, 
    String imagePath, 
    String description, 
    String composition, 
    String story, 
    BuildContext context
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              title: foodName,
              imagePath: imagePath,
              description: description,
              composition: composition,
              story: story,
            ),
          ),
        );
      },
      child: Card(
        child: Column(
          children: [
            Expanded(child: Image.asset(imagePath, fit: BoxFit.cover)),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(foodName, style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
