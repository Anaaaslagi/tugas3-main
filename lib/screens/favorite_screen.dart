import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:tugas3/screens/home_screen.dart'; // Pastikan HomePage diimport


class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'This is the Favorites screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        index: 2, // Menandakan bahwa kita berada di halaman "Favorite"
        items: [
          Icon(Icons.home, size: 30, color: Colors.lightBlue.shade800),
          Icon(Icons.location_on, size: 30, color: Colors.lightBlue.shade800),
          Icon(Icons.favorite, size: 30, color: Colors.lightBlue.shade800),
          Icon(Icons.person, size: 30, color: Colors.lightBlue.shade800),
        ],
        onTap: (index) {
          if (index == 0) { // Home screen
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } else if (index == 1) { // Location screen
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()), // Pastikan LocationScreen diimport dengan benar
            );
          } else if (index == 3) { // Profile screen
            // Navigasi ke halaman profil (tambahkan kode profil jika ada)
          }
        },
      ),
    );
  }
}
