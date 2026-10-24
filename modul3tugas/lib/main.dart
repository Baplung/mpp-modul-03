import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Weather App'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          elevation: 0,
        ),
        body: Stack(
          children: [
            // Badge versi kecil di pojok kanan atas
            Positioned(
              top: 10,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: const BoxDecoration(
                  color: Color(0xFFE91E63),
                ),
                child: const Text(
                  'v.0.0.7',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),

            // Konten utama
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Nama kota
                  const Text(
                    'Malang',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                      fontFamily: 'serif',
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Suhu utama
                  const Text(
                    '25°',
                    style: TextStyle(
                      fontSize: 96,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      height: 1.0,
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Forecast 3 hari
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      _ForecastItem(
                        hari: 'Minggu',
                        icon: Icons.wb_sunny,
                        suhu: '20\u00B0C',
                      ),
                      _ForecastItem(
                        hari: 'Senin',
                        icon: Icons.cloudy_snowing,
                        suhu: '23\u00B0C',
                      ),
                      _ForecastItem(
                        hari: 'Selasa',
                        icon: Icons.cloud,
                        suhu: '22\u00B0C',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget untuk satu item forecast (hari + ikon + suhu)
class _ForecastItem extends StatelessWidget {
  const _ForecastItem({
    required this.hari,
    required this.icon,
    required this.suhu,
  });

  final String hari;
  final IconData icon;
  final String suhu;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          hari,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),
        const SizedBox(height: 12),
        Icon(
          icon,
          size: 40,
          color: Colors.black87,
        ),
        const SizedBox(height: 12),
        Text(
          suhu,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}