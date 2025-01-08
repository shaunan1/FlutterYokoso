import 'package:flutter/material.dart';
import 'detailpage.dart';

class MinumanKhasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Minuman Khas Kediri')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        children: [
          foodcard(
            'Wedang Ronde',
            'assets/image/wedang_ronde.png',
            'Minuman tradisional hangat dengan bola-bola ketan.',
            'Komposisi: Bola ketan (tepung ketan, air, gula merah), kuah jahe (jahe, gula merah, daun pandan), pelengkap (kacang tanah sangrai, kolang-kaling).',
            'Wedang Ronde adalah minuman tradisional yang berasal dari pengaruh budaya Tionghoa, mirip dengan "Tangyuan". Minuman ini sering dikonsumsi pada malam hari atau saat cuaca dingin untuk menghangatkan tubuh.',
            context,
          ),
          foodcard(
            'Es Dawet',
            'assets/image/es_dawet.png',
            'Es segar dengan cendol dan santan khas Jawa.',
            'Komposisi: Cendol (tepung beras, air daun pandan, tepung sagu), santan kelapa, gula merah cair, es serut.',
            'Es Dawet adalah minuman khas Jawa yang sudah dikenal sejak zaman kerajaan Mataram. Rasanya yang manis dan segar menjadikannya pilihan favorit saat musim panas atau acara adat.',
            context,
          ),
          foodcard(
            'Teh Telang',
            'assets/image/teh_telang.png',
            'Minuman herbal dengan warna biru alami.',
            'Komposisi: Bunga telang kering, air hangat, jeruk nipis (opsional), madu (opsional).',
            'Teh Telang adalah minuman herbal yang populer karena warnanya yang unik dan manfaat kesehatannya. Warna biru alami berasal dari bunga telang, yang dipercaya membantu meningkatkan kesehatan mata dan mengurangi stres.',
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
