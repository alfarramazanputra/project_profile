import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Menjadikan AppBar di atas konten
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Membuat AppBar transparan
        elevation: 0, // Menghilangkan bayangan
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView( 
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.all(20.0),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 100), // Menambahkan jarak antara AppBar dan profil
              const CircleAvatar(
                radius: 50, // Ukuran lingkaran
                backgroundImage: AssetImage('assets/images/icalKecil.jpg'),
              ),
              const SizedBox(height: 10), // Jarak antara profil dan teks nama
              const Text(
                "Muhammad Alfar Ramazan Putra. F", 
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 20), // Jarak antara profil dan card
              _buildCard(context, "About", "Muhammad Alfar Ramazan Putra Faizal, seorang yang baik hati, rajin, suka menolong, tidak pernah berkata kasar, dan tidak sombong."),
              _buildCard(context, "History", "Saya menempuh pendidikan dasar di SDN Gadog 06. Setelah itu, saya melanjutkan ke SMPIT Roudlothul Jannah dan masih menempuh pendidikan di SMK Wikrama Bogor."),  
              _buildCard(context, "Skill", "Saya memilih sebagai seorang Back-End Developer, saya memiliki skill di bahasa pemograman JavaScript(express), Laravel, dan MySQL."),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0), // Mengatur jarak antar card
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 300,  // Ukuran tetap untuk lebar card
          minHeight: 100, // Ukuran minimum untuk tinggi card, sehingga card tidak terlalu tinggi
        ),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          color: Colors.white.withOpacity(0.6),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                const SizedBox(height: 10),
                Text(
                  content,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 14, color: Colors.black87),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}