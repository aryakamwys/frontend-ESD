import 'package:esd_project/app/modules/login_screen.dart';
import 'package:esd_project/app/modules/register/register_screen2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen1 extends StatelessWidget {
  const RegisterScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 96),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Hello\n",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 39,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1B4A38)),
                ),
              ),
              TextSpan(
                  text: "there!",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 39,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF8BCAAA))))
            ])),
            const SizedBox(height: 8),
            Text(
              "Register now to start recycling, donating, and making every meal count",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(fontSize: 13, color: Colors.grey)),
            ),
            const SizedBox(height: 32),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email_outlined,
                      color: Color(0xFF277453)),
                  hintText: "Enter your email",
                  hintStyle: const TextStyle(color: Color(0xFFB4C2BD)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: const BorderSide(color: Color(0xFF277453)))),
            ),
            const SizedBox(height: 12),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon:
                    const Icon(Icons.lock_open, color: Color(0xFF277453)),
                hintText: 'Create password',
                hintStyle: const TextStyle(color: Color(0xFFB4C2BD)),
                suffixIcon: const Icon(Icons.visibility_off_outlined,
                    color: Color(0xFF277453)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32), // Rounded border
                  borderSide: const BorderSide(color: Color(0xFF40A578)),
                ),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon:
                    const Icon(Icons.lock_open, color: Color(0xFF277453)),
                hintText: 'Re-type your password',
                hintStyle: const TextStyle(color: Color(0xFFB4C2BD)),
                suffixIcon: const Icon(Icons.visibility_off_outlined,
                    color: Color(0xFF277453)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32), // Rounded border
                  borderSide: const BorderSide(color: Color(0xFF40A578)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              children: [
                Transform.scale(
                  scale: 1.5,
                  child: Checkbox(
                    value: false,
                    onChanged: (value) {
                      // Add your logic here to handle checkbox state changes
                      if (kDebugMode) {
                        print('Checkbox value changed: $value');
                      }
                    },
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)),
                    side: const BorderSide(width: 17.5),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'By signing up, you agree to our Terms of Service and\n Privacy Policy',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                )
              ],
            ),

            const SizedBox(height: 32),

            // Log in Button with updated color
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegisterScreen2()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color(0xFFE2E9E6), // Background color for button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32), // Rounded border
                  ),
                ),
                child: const Text("Sign Up",
                    style: TextStyle(color: Color(0xFF999999), fontSize: 16)),
              ),
            ),

            const SizedBox(height: 13),

            // Bottom text for creating new account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const Text(
                    "Log in",
                    style: TextStyle(color: Color(0xFF40A578)),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
