import 'package:flutter/material.dart';

class TentangSayaPage extends StatelessWidget {
  const TentangSayaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Saya'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
                const SizedBox(height: 30),
                Text(
                  '20241320026',
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Pajar',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Saya adalah seorang mahasiswa yang sedang menempuh pendidikan di Universitas Kebangsaan Republik Indonesia. Saya memiliki minat yang besar dalam bidang teknologi dan pengembangan aplikasi. Saya senang belajar hal-hal baru dan selalu berusaha untuk meningkatkan keterampilan saya dalam pemrograman dan desain. Saya percaya bahwa teknologi dapat memberikan dampak positif bagi masyarakat, dan saya ingin menjadi bagian dari perubahan tersebut. Selain itu, saya juga aktif dalam berbagai kegiatan organisasi di kampus dan senang berkolaborasi dengan orang lain untuk mencapai tujuan bersama.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
