import 'package:esd_project/app/modules/Storing%20Tips/storing_tips.dart';
import 'package:esd_project/app/modules/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20), // Memberikan jarak atas
            _buildHeader(),
            _buildSlogan(),
            _buildPhoto(),
            _buildDigitalWallet(),
            _buildNearestEvents(), // Menambahkan Nearest Event Section
            _buildStoringTips(context), // Menambahkan Storing Tips
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 20,
                //backgroundImage: AssetImage('assets/profile_image.png'),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello,',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF1B4A38)),
                  ),
                  Text(
                    'Eco Meal',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        color: const Color(0xff8BCAAA)),
                  ),
                ],
              ),
            ],
          ),
          Stack(
            children: [
              const Icon(Icons.notifications_none, size: 28),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSlogan() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        "Every Meal Matters.\nLet's Recycle and Share!",
        style: GoogleFonts.poppins(
            fontSize: 20,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF1B4A38)),
      ),
    );
  }

  Widget _buildPhoto() {
    return const Image(
      image: AssetImage('assets/home.png'),
    );
  }

  Widget _buildDigitalWallet() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF40A578),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rp 0',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Digital Wallet',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '0 Points',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.person, color: Colors.white, size: 20),
              const SizedBox(width: 4),
              Text(
                'Gold Member',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Bagian untuk nearest event
  Widget _buildNearestEvents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Nearest Event',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1B4A38),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View more',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF40A578),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              _buildEventCard(
                'Volunteer',
                'Bantuan Gempa Palu',
                '28 Aug 2024',
                'assets/palu.png', // Ganti dengan asset yang benar
              ),
              const SizedBox(width: 16),
              _buildEventCard(
                'Volunteer',
                'Another Event',
                '15 Sep 2024',
                'assets/palu 2.png', 
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildEventCard(
      String type, String title, String date, String imageAsset) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: const Color(0xFF40A578),
        borderRadius: BorderRadius.circular(12),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              imageAsset,
              fit: BoxFit.cover,
            ),
          ),
          // Gradient overlay
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                ),
              ),
            ),
          ),
          // Content
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    type,
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF40A578),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  date,
                  style: GoogleFonts.poppins(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                const Align(
                  alignment: Alignment.bottomRight,
                  child:
                      Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Bagian storing tips
  Widget _buildStoringTips(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Storing Tips',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1B4A38),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StoringTipsScreen()),
                    );
                },
                child: Text(
                  'View more',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF40A578),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              _buildTipCard('Vegetables', 'Bak Choy', 'Bok choy, pak cho...', 'assets/pakcoi.png'),
              const SizedBox(width: 16),
              _buildTipCard('Fruits', 'Cherry Tomato', 'The cherry tomat...', 'assets/tomat.png'),
              const SizedBox(width: 16),
              _buildTipCard('Meat', 'Beef', 'Ground beef, p...', 'assets/bambu.png'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTipCard(
      String type, String title, String description, String imageAsset) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageAsset,
            width: 160,
            height: 120,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF40A578),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF1B4A38),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF1B4A38),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

Widget _buildBottomNavigationBar(BuildContext context) {
  return Container(
    height: 75,
    decoration: BoxDecoration(
      color: const Color(0xFF277453),
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 5,
          offset: const Offset(0, -3),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: BottomNavigationBar(
        backgroundColor: const Color(0xFF40A578),
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xFF277453),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home), // Ganti dengan ikon yang sesuai
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.recycling), // Ganti dengan ikon yang sesuai
            label: 'eWaste',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.event), // Ganti dengan ikon yang sesuai
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.point_of_sale), // Ganti dengan ikon yang sesuai
            label: 'Points',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person), // Ganti dengan ikon yang sesuai
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
              break;
            case 4:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
              break;
          }
        },
      ),
    ),
  );
}
  
}
   