import 'package:esd_project/app/modules/login_screen.dart';
import 'package:esd_project/app/modules/screen/onboard/onboard_step1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class RegisterScreen2 extends StatefulWidget {
  const RegisterScreen2({super.key});

  @override
  State<RegisterScreen2> createState() => _RegisterScreen2State();
}

class _RegisterScreen2State extends State<RegisterScreen2> {
  Future<void> _getImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {});
    }
  }

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
                    text: "Almost\n",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 39,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1B4A38),
                      ),
                    ),
                  ),
                  TextSpan(
                    text: "there!",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 39,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF8BCAAA),
                      ),
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 32),
              Center(
                child: GestureDetector(
                  onTap: _getImage,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    child: const Icon(Icons.image),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text('Choose image',
                  style: TextStyle(color: Color(0xFF40A578))),
              const SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.people_alt_outlined,
                        color: Color(0xFF277453)),
                    hintText: "Enter your name",
                    hintStyle: const TextStyle(color: Color(0xFFB4C2BD)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide:
                            const BorderSide(color: Color(0xFF277453)))),
              ),
              const SizedBox(height: 12),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xFF277453)),
                  hintText: 'Input your number',
                  hintStyle: const TextStyle(color: Color(0xFFB4C2BD)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32), // Rounded border
                    borderSide: const BorderSide(color: Color(0xFF40A578)),
                  ),
                ),
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
                      MaterialPageRoute(builder: (context) => const OnboardStep1()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xFF40A578), // Background color for button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32), // Rounded border
                    ),
                  ),
                  child: const Text("Sign Up",
                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16)),
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
        ),
      ),
    );
  }
}
