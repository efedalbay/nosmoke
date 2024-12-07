import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.bell),
            onPressed: () {},
          ),
        ],
      ),

      // Drawer (Yan Menü)
      drawer: Drawer(
        child: Column(
          children: [
            // Drawer Header
            Container(
              height: 200,
              color: Colors.blue,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.person_circle,
                    size: 80,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Kullanıcı Adı',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            // Menü öğeleri
            ListTile(
              leading: const Icon(CupertinoIcons.home),
              title: const Text('Ana Sayfa'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Ayarlar'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // Ana içerik
       body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Sigarasız geçen zaman",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            const SizedBox(height: 16),
            // Zaman Gösterimi
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                timeBox("0", "Yıl"),
                timeBox("9", "Ay"),
                timeBox("4", "Hafta"),
                timeBox("0", "Gün"),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                timeBox("22", "Saat"),
                timeBox("24", "Dakika"),
                timeBox("39", "Saniye"),
                timeBox("325", "Milisn."),
              ],
            ),
            const SizedBox(height: 24),
            // Sağlık Durumu ve Para Bilgileri
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                infoBox(Icons.health_and_safety, "50%", "Sağlık Durumum"),
                infoBox(Icons.attach_money, "3.029 ₺", "Cepte kalan para"),
              ],
            ),
            const SizedBox(height: 16),
            // Diğer Bilgiler
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                infoBox(Icons.smoke_free, "6.058", "İçilmeyen sigara"),
                infoBox(Icons.timer, "12 Gün", "Kurtarılan zaman"),
              ],
            ),
          ],
        ),
      ),

      // Alt navigasyon çubuğu
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Keşfet',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Profil',
          ),
        ],
        onTap: (index) {
          // Navigasyon işlemleri buraya gelecek
        },
      ),
    );
  }
  
 // Zaman Bilgisi Widget'ı
  Widget timeBox(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(label, style: const TextStyle(fontSize: 14)),
      ],
    );
  }

  // Bilgi Kartı Widget'ı
  Widget infoBox(IconData icon, String value, String label) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.green),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(label, textAlign: TextAlign.center, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}
