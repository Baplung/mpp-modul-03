import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alignment',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Alignment'),
        ),
        // ============================================
        // LANGKAH 1-4: Row 3 kotak horizontal
        // ============================================
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text('Suhu:', style: TextStyle(fontSize: 30)),
              Text('25°C', style: TextStyle(fontSize: 75)),
              Icon(Icons.sunny, color: Colors.amber, size: 45),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================
// LANGKAH 2: Widget Kustom KotakBiruJempol (100x100)
// ============================================
class KotakBiruJempol extends StatelessWidget {
  const KotakBiruJempol({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(
        Icons.thumb_up,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}

// ============================================
// LANGKAH 3: Widget Kustom KotakBiruJempolKecil (75x75)
// ============================================
class KotakBiruJempolKecil extends StatelessWidget {
  const KotakBiruJempolKecil({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(
        Icons.thumb_up,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}

// ============================================
// TUGAS: Widget Cuaca (untuk UI 3 ikon)
// Aktifkan kode di bawah saat mengerjakan TUGAS.
// ============================================
// Widget _kotakCuaca(IconData icon, String label) {
//   return Column(
//     mainAxisSize: MainAxisSize.min,
//     children: [
//       Container(
//         width: 100,
//         height: 100,
//         decoration: BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Icon(icon, color: Colors.white, size: 50),
//       ),
//       SizedBox(height: 10),
//       Text(label, style: TextStyle(fontSize: 16)),
//     ],
//   );
// }
//
// Untuk mengaktifkan TUGAS, ganti bagian body dengan:
//   body: Center(
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         _kotakCuaca(Icons.sunny, 'Sunny'),
//         _kotakCuaca(Icons.cloudy_snowing, 'Snowing'),
//         _kotakCuaca(Icons.cloud, 'Cloud'),
//       ],
//     ),
//   ),









// ============================================
// GANTI BAGIAN BODY DI ATAS UNTUK SETIAP LANGKAH
// ============================================
//
// LANGKAH 5 - MainAxisSize.max:
//   body: Center(
//     child: Row(
//       mainAxisSize: MainAxisSize.max,  // ← tambahkan
//       children: [...],
//     ),
//   ),
//
// LANGKAH 6 - MainAxisSize.min:
//   body: Center(
//     child: Row(
//       mainAxisSize: MainAxisSize.min,  // ← ganti jadi min
//       children: [...],
//     ),
//   ),
//
// LANGKAH 7 - Column MainAxisSize:
//   body: Center(
//     child: Column(
//       mainAxisSize: MainAxisSize.max,  // atau min
//       children: [
//         KotakBiruJempolKecil(),
//         SizedBox(height: 20), // ← height, bukan width!
//         KotakBiruJempol(),
//         SizedBox(height: 20),
//         KotakBiruJempolKecil(),
//       ],
//     ),
//   ),
//
// LANGKAH 8a - MainAxisAlignment.center:
//   body: Center(
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [...],
//     ),
//   ),
//
// LANGKAH 8b - spaceEvenly:
//   body: Center(
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [...],
//     ),
//   ),
//
// LANGKAH 9a - CrossAxisAlignment.center:
//   body: Center(
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [...],
//     ),
//   ),
//
// LANGKAH 9d - UI Suhu (baseline):
//   body: const Center(
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       crossAxisAlignment: CrossAxisAlignment.baseline,
//       textBaseline: TextBaseline.alphabetic,
//       children: [
//         Text('Suhu:', style: TextStyle(fontSize: 30)),
//         Text('25°C', style: TextStyle(fontSize: 75)),
//         Icon(Icons.sunny, color: Colors.amber, size: 45),
//       ],
//     ),
//   ),
//
// TUGAS - UI Cuaca 3 ikon:
//   Ganti body dengan:
//   body: Center(
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         _kotakCuaca(Icons.sunny, 'Sunny'),
//         _kotakCuaca(Icons.cloudy_snowing, 'Snowing'),
//         _kotakCuaca(Icons.cloud, 'Cloud'),
//       ],
//     ),
//   ),