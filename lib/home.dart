import 'package:flutter/material.dart';
import 'makanan_tradisional.dart';
import 'minuman_khas.dart';
import 'oleh_oleh.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/KK.png', // logo
              height: 32, // ukuran logo
              width: 32,
            ),
            SizedBox(width: 8), // Jarak antara logo dan teks
            Text('Kuliner Kediri'),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              _showLogoutDialog(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'assets/kuliner.png', // logo 2
              height: 100, // logo 2
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(16.0),
              children: [
                categoryCard(context, 'Makanan Tradisional', Icons.fastfood,
                    MakananTradisionalPage()),
                categoryCard(context, 'Minuman Khas', Icons.local_drink,
                    MinumanKhasPage()),
                categoryCard(context, 'Oleh-Oleh', Icons.shopping_bag,
                    OlehOlehPage()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget categoryCard(
      BuildContext context, String title, IconData icon, Widget page) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 36,
              color: const Color.fromARGB(255, 255, 0, 0), // Warna ikon
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Konfirmasi Logout'),
          content: Text('Apakah Anda yakin ingin logout?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
                Navigator.of(context).pushReplacementNamed('/login'); // Navigasi ke halaman login
              },
              child: Text('Logout'),
            ),
          ],
        );
      },
    );
  }
}
