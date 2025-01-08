import 'package:flutter/material.dart';
import 'detailpage.dart';

class MakananTradisionalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Makanan Tradisional Kediri')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        children: [
        foodcard(
          'Tahu Takwa',
          'assets/image/tahu_takwa.png',
          'Tahu Takwa adalah tahu khas Kediri yang terbuat dari kedelai pilihan dan diberi warna alami dari kunyit. '
          'Tahu ini telah menjadi ikon makanan khas sejak zaman kolonial Belanda.',
          'Komposisi: Kedelai, air, garam, kunyit, dan cuka.',
          'Tahu Takwa dikenal sejak zaman penjajahan Belanda. Nama ini berasal dari kata Hokkien "tau kwa", yang berarti tahu padat. Dibawa oleh pendatang Tionghoa, tahu ini diberi sentuhan lokal seperti kunyit untuk pewarna alami.',
          context,
        ),
        foodcard(
          'Pecel Kediri',
          'assets/image/pecel_kediri.png',
          'Pecel Kediri adalah makanan tradisional dengan bumbu kacang khas.',
          'Komposisi: Kacang panjang, bayam, tauge, daun singkong, sambal kacang (kacang tanah, cabai, bawang putih, kencur, gula merah, garam, asam jawa), pelengkap (tempe goreng, rempeyek).',
          'Pecel Kediri mencerminkan tradisi masyarakat agraris yang menikmatinya sebagai makanan sehari-hari. Sambal kacangnya memiliki cita rasa khas karena menggunakan kencur.',
          context,
        ),
        foodcard(
          'Soto Kediri',
          'assets/image/soto_kediri.png',
          'Soto Kediri adalah soto dengan kuah kaya rempah.',
          'Komposisi: Ayam kampung, bawang putih, bawang merah, kunyit, jahe, lengkuas, daun salam, serai, pelengkap (taoge, soun, telur rebus, jeruk nipis, bawang goreng).',
          'Soto Kediri memiliki cita rasa yang kaya berkat penggunaan bumbu rempah yang melimpah. Hidangan ini sering disantap sebagai sarapan atau pengisi energi setelah aktivitas berat.',
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
