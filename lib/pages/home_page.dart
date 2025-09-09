import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String nama;
  final String nim;

  const HomePage({Key? key, required this.nama, required this.nim})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.home, size: 80, color: Colors.blue),
            const SizedBox(height: 20),
            Text(
              'Welcome, $nama!',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text('NIM: $nim', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            const Text(
              'This is the main screen of your app.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/item');
              },
              child: const Text('Go to Item Page'),
            ),
          ],
        ),
      ),
    );
  }
}
