import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text(
              'Uygulama Ayarları',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Bildirimler'),
              subtitle: Text('Bildirim tercihlerini yönet'),
            ),
            ListTile(
              leading: Icon(Icons.palette),
              title: Text('Tema'),
              subtitle: Text('Karanlık veya açık modu seç'),
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Gizlilik'),
              subtitle: Text('Gizlilik seçeneklerini düzenle'),
            ),
          ],
        ),
      ),
    );
  }
}
