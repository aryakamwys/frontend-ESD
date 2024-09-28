import 'package:esd_project/app/modules/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4)).then((value) {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });

    return Scaffold(
      body: Center(
        child: RichText(
          textAlign: TextAlign.center, // Align text to center
          text: TextSpan(
            children: [
              TextSpan(
                text: "Hello,\n",
                style: GoogleFonts.outfit(
                  textStyle: const TextStyle(
                      fontSize: 48, // Font size for "Hello,"
                      color: Colors.black, // Color for "Hello,"
                      fontWeight: FontWeight.w500 // Bold "Hello,"
                      ),
                ),
              ),
              TextSpan(
                text: "Welcome",
                style: GoogleFonts.outfit(
                  textStyle: const TextStyle(
                      fontSize: 48, // Font size for "Welcome"
                      color: Color(0xFF8BCAAA), // Color for "Welcome"
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
