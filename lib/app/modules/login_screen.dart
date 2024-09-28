import 'package:esd_project/app/modules/home/home_screen.dart';
import 'package:esd_project/app/modules/register/register_screen1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const String googleIconPath = 'assets/flat-color-icons_google.png';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 24.0), // Add padding to make it responsive
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 96), // Space from the top

              // Welcome back! text with two different styles
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Welcome\n",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 39,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF1B4A38) // Color for "Welcome"
                            ),
                      ),
                    ),
                    TextSpan(
                      text: "back!",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 39,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF8BCAAA) // Color for "back!"
                            ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 8),

              // Subtitle text
              Text(
                "Log in to continue your journey in supporting sustainable living and sharing resources",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
                textAlign: TextAlign.start,
              ),

              const SizedBox(height: 32),

              // Email/Phone input
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email_outlined,
                      color: Color(0xFF277453)),
                  hintText: 'Enter your email/phone numbers',
                  hintStyle: const TextStyle(color: Color(0xFFB4C2BD)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32), // Rounded border
                    borderSide: const BorderSide(color: Color(0xFF277453)),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // Password input
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.lock_open, color: Color(0xFF277453)),
                  hintText: 'Enter your password',
                  hintStyle: const TextStyle(color: Color(0xFFB4C2BD)),
                  suffixIcon: const Icon(Icons.visibility_off_outlined,
                      color: Color(0xFF277453)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32), // Rounded border
                    borderSide: const BorderSide(color: Color(0xFF40A578)),
                  ),
                ),
              ),

              const SizedBox(height: 1),

              // Forgot Password link
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Color(0xFF40A578)),
                  ),
                ),
              ),

              const SizedBox(height: 36),

              // Log in Button with updated color
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => const HomeScreen()));

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xFF40A578), // Background color for button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32), // Rounded border
                    ),
                  ),
                  child: const Text("Log in",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),

              const SizedBox(height: 16),

              // Divider with "or"
              const Row(
                children: [
                  Expanded(child: Divider(color: Colors.black)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("Or"),
                  ),
                  Expanded(child: Divider(color: Colors.black)),
                ],
              ),

              const SizedBox(height: 16),

              // Continue with Google button (You can replace the icon here)
              SizedBox(
                width: double.infinity,
                height: 48,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const ImageIcon(
                    AssetImage(googleIconPath),
                  ),
                  label: const Text(
                    "Continue with Google",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          32), // Rounded border for Google button
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Bottom text for creating new account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen1()));
                    },
                    child: const Text(
                      "Create new account",
                      style: TextStyle(color: Color(0xFF40A578)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
