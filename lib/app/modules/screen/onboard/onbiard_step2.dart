import 'package:esd_project/app/modules/home/home_screen.dart';
import 'package:esd_project/app/modules/screen/onboard/onboard_step1.dart';
import 'package:esd_project/app/modules/screen/onboard/onboard_step3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class onboardstep2 extends StatelessWidget {
  const onboardstep2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OnboardStep1()),
              );

          },
        ),
        title: LinearProgressIndicator(
          value: 0.5, // Sesuaikan dengan progress step
          backgroundColor: Colors.grey[300],
          valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF40A578)),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
            child: const Text(
              "Skip",
              style: TextStyle(
                color: Colors.black, // Warna teks
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Rata kiri seluruh elemen
        children: [
          // Gambar di tengah
          Positioned(
            top: 16,
            child: Image.asset(
              'assets/jeruk.png', // Sesuaikan dengan lokasi asset gambar kamu
              width: 1000,
              height: 500,
            ),
          ),

          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 16.0), // Menambahkan padding di kiri dan kanan
            child: RichText(
              textAlign: TextAlign.left, // Mengatur teks rata kiri
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "A Growing \n",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1B4A38),
                      ),
                    ),
                  ),
                  TextSpan(
                    text: "Problem in Indonesia\n",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF8BCAAA),
                      ),
                    ),
                  ),
                  TextSpan(
                    text:
                        "Indonesia ranks as the second-largest food\n waster globally. Our app was created to tackle this\n critical issue.\n\n", // Teks tambahan
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 11, // Ukuran font lebih kecil untuk deskripsi
                        fontWeight: FontWeight.normal,
                        color: Color(0xff5e8072),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight, // Menempatkan tombol di kanan
            child: FloatingActionButton(
              onPressed: () {
                // Aksi untuk ke layar berikutnya
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OnboardStep3()),
                );
              },
              backgroundColor: const Color(0xFF40A578),
              child: const Icon(Icons.arrow_forward), // Warna tombol
            ),
          ),
        ],
      ),
    );
  }
}