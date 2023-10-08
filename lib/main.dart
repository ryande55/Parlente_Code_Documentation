// Impor pustaka Flutter Material untuk membangun antarmuka pengguna.
import 'package:flutter/material.dart';

// Titik masuk aplikasi Flutter.
void main() {
  // Menjalankan widget MyApp sebagai akar aplikasi.
  runApp(const MyApp());
}

// Widget aplikasi utama, StatelessWidget mewakili bagian statis dari antarmuka pengguna.
class MyApp extends StatelessWidget {
  // Konstruktor untuk widget MyApp.
  const MyApp({super.key});

  // Metode build digunakan untuk membangun antarmuka aplikasi.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Flutter', // Mengatur judul aplikasi.
      theme: ThemeData(
        // Menyesuaikan tema aplikasi.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Mengatur skema warna.
        useMaterial3: true, // Mengaktifkan desain Material 3.
      ),
      home: const MyHomePage(title: 'Halaman Utama Contoh Flutter'), // Mengatur halaman utama.
    );
  }
}

// StatefulWidget yang mewakili halaman utama.
class MyHomePage extends StatefulWidget {
  // Konstruktor untuk widget MyHomePage, memerlukan sebuah judul.
  const MyHomePage({super.key, required this.title});

  final String title; // Menyimpan teks judul.

  // Membuat status untuk MyHomePage.
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Kelas status untuk MyHomePage.
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // Menginisialisasi variabel hitungan.

  // Fungsi untuk menambah hitungan dan memicu pembaruan antarmuka pengguna.
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Metode build digunakan untuk membuat antarmuka pengguna halaman utama.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Menyesuaikan app bar dengan warna latar belakang dan judul.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title), // Menampilkan judul.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Anda telah menekan tombol ini sebanyak:', // Teks statis.
            ),
            Text(
              '$_counter', // Menampilkan nilai hitungan.
              style: Theme.of(context).textTheme.headlineMedium, // Menggunakan gaya teks dari tema.
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // Mengatur penanganan acara onPressed.
        tooltip: 'Tambah', // Teks tooltip.
        child: const Icon(Icons.add), // Ikoni untuk tombol.
      ),
    );
  }
}
